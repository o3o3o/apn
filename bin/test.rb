#!/usr/bin/env ruby
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'apn'

message = {:alert => 'This is a test from APN!', :badge => 16 ,:device_token => '3f7be051791c09aae2475038808ef2ca62c35a20378f501be35e91450dba50e9'}
APN.queue(message)
