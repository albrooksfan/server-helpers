#!/usr/bin/env ruby

port = `ruby port.rb`

puts `lsof -t -i:#{port}`
