#!/usr/bin/env ruby

require 'twitter'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "2oGAPJw4SdmQnX6Z1LMNKeBTD"
  config.consumer_secret     = "BGdkFOGwFP3x7FAxQhMcQOVT8D1f9i1rf1OWA5f1mf6O6kGAMN"
  config.access_token        = "3657638057-qskcOAbfyBd5XZnKvgFpkIoVDGaHMA18GiGciBA"
  config.access_token_secret = "4p6Lyl2B2nGmCMTMABNj6oh00IyTSPYwMSzX4mvTRyiTa"
end

client.search("#ruby").take(50).each do |tweet|
     puts tweet.text
end
