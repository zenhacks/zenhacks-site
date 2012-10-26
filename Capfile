require 'capistrano-zen/nginx'

# enable prompt for password
default_run_options[:pty] = true

# try_sudo will not use sudo by default
set :use_sudo, false

# access github.com using as the local user
ssh_options[:forward_agent] = true

set :application, "zenhacks"

set :domain, "www.zenhacks.org zenhacks.org"

# maxwell - 42.121.82.106, aliyun,hangzhou
server 'maxwell', :web, :app, :db, :primary => true

set :user, 'deploy'
set :deploy_to, "/home/#{user}/sites/#{application}-production"

namespace :deploy do
  desc "Deploys your project. This calls both `update' and `nginx.restart'. "
  task :default, roles: :app do
    update
    nginx.restart
  end

  desc "Setup the directory for the application."
  task :setup, roles: :app do
    dirs = [deploy_to]
    run "mkdir -p #{dirs.join(' ')}"
    run "chmod g+w #{dirs.join(' ')}" if fetch(:group_writable, true)
  end

  desc "Update the dest code for this application."
  task :update, roles: :app do
    system('bundle exec middleman build --clean')
    roles[:app].servers.each do |server|
      system("rsync -cuavz build/* #{user}@#{server}:#{deploy_to}")
    end
  end
end

after "deploy:install",
  "nginx:install"

after "deploy:setup",
  "nginx:setup:static"
