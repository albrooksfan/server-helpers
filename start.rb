#!/usr/bin/env ruby

#this script runs the server in the background and stdout and stderr to a file
#specified in the arguments or to /dev/null by default

log_file = "/dev/null"
unless ARGV.empty?
  log_file = ARGV.shift.chomp
end

pid = `./pid.rb`.chomp

unless pid.empty?
  puts "server already running [#{pid}]"
  exit
end

`nohup ./run.sh >> #{log_file} 2>&1 &`

port = `./port.rb`.chomp

puts "starting server on #{port}"