#!/usr/bin/env ruby
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'apn'

APN.configure do |config|
    config.cert_file = '/tmp/iossslkey/develop.pem'
    config.cert_password = ''
    #config.log_file = '/tmp/log/apn.log'
end

feedback_data = APN::Feedback.new().data

feedback_data.each do |item|
    APN.log(:info, '#{item}')
    user = User.find_by_device_token( item.token )

    if user.device_token_updated_at && user.device_token_updated_at > item.timestamp
        return true
    else
        user.update_attributes(device_token: nil, device_token_updated_at: Time.now)
    end
end
