# worker_processes 2
# listen '/tmp/unicorn.sock'
# stderr_path File.expand_path('unicorn.log', File.dirname(__FILE__) + '/../log')
# stdout_path File.expand_path('unicorn.log', File.dirname(__FILE__) + '/../log')
# preload_app true


# Define your root directory
root = "/home/ec2-user/wasabi"
 
# Define worker directory for Unicorn
working_directory root
 
# Location of PID file
pid "#{root}/tmp/pids/unicorn.pid"
 
# Define Log paths
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"
 
# Listen on a UNIX data socket
listen "/tmp/unicorn.wasabi.sock"

# 16 worker processes for production environment
worker_processes 16
 
# Load rails before forking workers for better worker spawn time
preload_app true
 
# Restart workes hangin' out for more than 240 secs
timeout 240