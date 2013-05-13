#!/usr/bin/env ruby

#this pulls the port from a config file; you'll likely need to change the logic
#or paths depending on how your code is setup

puts `grep "port:" config.yml | tail -1`.split(" ").last
