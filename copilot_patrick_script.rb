"""Publish text and image of Patrick with his mind blown on Twitter"""

# Directions are at the bottom of the script too but here is a quick overview:
# 1. Create a new Twitter account and get your API keys (unless you want to have your Followers watch LOL)
# 2. Make sure you have the gem 'twitter' installed and working
# 3. Make sure you have the gem 'dotenv' installed and working
# 3. Edit the script.rb file to suit your tastes
# 4. Run the script.rb file from the command line
# 5. Enjoy!

# gem install twitter
require 'twitter'

# Load the credentials from the .env file
# Get the keys here: https://developer.twitter.com/en/portal/projects-and-apps/create-a-twitter-app
# Keys for the .env file are in the format:
#
# TWITTER_CONSUMER_KEY=KzIAYCi6D3MyqW5bRTBLA9Uax
# TWITTER_CONSUMER_SECRET=uE40ZGBRWzBG55RwNP5zJZlTFtqKLRvMnDs0S1lOU5gPGo6ePp
# TWITTER_ACCESS_TOKEN=659013-kXHk4qjMwNYY0EubFYmcQk6lXASMGMJAjEbbkXPz6nA
# TWITTER_ACCESS_SECRET=kth1xCx2OmPcUZgcjFdUaASkLYcGikTglBsneFTxkQ9Vr
#

# gem install dotenv
require 'dotenv'
Dotenv.load

# Create a client
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
  config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
  config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
  config.access_token_secret = ENV['TWITTER_ACCESS_SECRET']
end

# Publish the update that includes text, a newline, and the GIF89a image of Patrick with his mind blown
client.update_with_media("Hello World!\nThis Tweet used code provided by by @GitHub Copilot! 🤯", File.open("patrick.gif"))

# To run this script you may want to use rvm if you do not have root or sudo on your Mac / Linux environment
# 1. Install Ruby 2.6.6 or something recent
# 2. Install the gems listed above
# 3. Create a .env file with the keys listed above with your Twitter API keys
# 4. Run the script with `ruby script.rb`
# 5. Check your Twitter feed to see the update
# 6. Enjoy!
# 7. If you want to see the code (much of which was done with Copilot), check out the GitHub repo which was used to create this script: 
