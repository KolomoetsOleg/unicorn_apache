# Set your full path to application.
app_path = "/var/www/unicorn_apache/current" # {}"/var/www/unicorn_apache/current"
 
# Set unicorn options
worker_processes 1
preload_app true
timeout 180
listen 5000
 
 
# Fill path to your app
working_directory app_path
 
# Should be 'production' by default, otherwise use other env
rails_env = ENV['RAILS_ENV'] || 'production'
 
# Log everything to one file
stderr_path "#{app_path}/log/unicorn.log"
stdout_path "#{app_path}/log/unicorn.log"
 
# Set master PID location
pid "#{app_path}/tmp/pids/unicorn.pid"