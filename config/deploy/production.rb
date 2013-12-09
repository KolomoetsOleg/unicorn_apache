set :user, "ubuntu"
server 'ec2-54-200-254-188.us-west-2.compute.amazonaws.com', :app, :web, :db, :primary => true
set :branch, 'master'
set :deploy_to, "/var/www/#{application}"
set :ssh_options, { :forward_agent => true }