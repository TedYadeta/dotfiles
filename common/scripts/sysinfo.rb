#!/usr/bin/env ruby

require 'etc'
require 'io/console'
require 'rbconfig'
require 'socket'

arch = RbConfig::CONFIG['host_cpu']
os = RbConfig::CONFIG['host_os']
hostname = Socket.gethostname

# The only system call I need to make in Ruby :(
kerver = `uname -r`.strip

shell = Etc.getpwnam(Etc.getlogin).shell

# There must be a cleaner way to get this?
term = IO.console

user = Etc.getlogin

ipaddr = `host localhost`.split(" ")[3]

puts "Architecture:     " + arch
puts "Operating System: " + os
puts "Hostname:         " + hostname
puts "Kernel Version:   " + kerver
puts "Shell:            " + shell
puts "Terminal:         #{term.inspect}"
puts "User:             " + user
puts "IP Address:       " + ipaddr
puts "Ruby Version:     "  + RUBY_VERSION

