#!/usr/bin/env ruby

pid = `ruby pid.rb`.chomp

if pid.empty?
  puts "process is already dead"
  exit
end

puts "stopping process [#{pid}]"
`kill #{pid}`
