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
