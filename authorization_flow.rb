require 'bundler/setup'
require 'instapaper'

credentials = {
  consumer_key: ENV['CONSUMER_KEY'],
  consumer_secret: ENV['CONSUMER_SECRET'],
}

username = ENV['USERNAME']
password = ENV['PASSWORD']

client = Instapaper::Client.new(credentials)
token = client.access_token(username, password)
# => #<Instapaper::Credentials oauth_token="710c838347ae178b4a92c6912e7e72e16c7e42f2" oauth_token_secret="XSXuU7TxBCzbKLjHH4R5iv8wfESLjeY9DI9sAdRBmCnui1E64m">

client.oauth_token = token.oauth_token
client.oauth_token_secret = token.oauth_token_secret

puts client.verify_credentials.inspect
# => #<Instapaper::User username="username" user_id=123456 type="user" subscription_is_active=false>
