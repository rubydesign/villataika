# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

Villataika::Application.load_tasks
desc "Create the static content for upload to server. (to ./villataika.fi)"
task :output do
  require "socket"
  name = Socket.gethostname
  local = "-k" if name.include?("local")
  dir = "./villataika.fi/"
  require 'ftools'
  File.makedirs dir
  system "cp -R public/* #{dir}"
  system "cd #{dir}; wget -nH #{local} -m http://localhost:3000/"
end


