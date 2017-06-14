#!/usr/bin/env ruby

require 'twitter'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "XXXX"
  config.consumer_secret     = "XXXX"
  config.access_token        = "XXXX"
  config.access_token_secret = "XXXX"
end

client.update "My first tweet from the command line, neat huh?"
