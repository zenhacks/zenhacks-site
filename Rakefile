SSH_USER = 'deploy'
SSH_HOST = 'maxwell'
SSH_DIR  = '/srv/www/htdocs/zenhacks_index/'

desc "Preview the website with middleman"
task :preview do
  puts "## Launch the previewer"
  status = system("bundle exec middleman server")
  puts status ? "OK" : "FAILED"
end

desc "Build the website from source"
task :build do
  puts "## Building website"
  status = system("bundle exec middleman build --clean")
  puts status ? "OK" : "FAILED"
end

desc "Deploy website via rsync"
task :deploy do
  puts "## Deploying website via rsync to #{SSH_HOST} as #{SSH_USER}"
  status = system("rsync -cuavz build/* #{SSH_USER}@#{SSH_HOST}:#{SSH_DIR}")
  puts status ? "OK" : "FAILED"
end

desc "Build and deploy website"
task :build_deploy => [:build, :deploy] do
end
