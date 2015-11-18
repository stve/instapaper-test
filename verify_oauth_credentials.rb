require 'bundler/setup'
require 'instapaper'

credentials = {
  consumer_key: ENV['CONSUMER_KEY'],
  consumer_secret: ENV['CONSUMER_SECRET'],
  oauth_token: ENV['OAUTH_TOKEN'],
  oauth_token_secret: ENV['OAUTH_TOKEN_SECRET'],
}

client = Instapaper::Client.new(credentials)
puts client.verify_credentials.inspect
# => #<Instapaper::User username="username" user_id=123456 type="user" subscription_is_active=false>
