# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


# This will enable your ActionMailer 
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.gmail.com',
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['USERNAME'],
  :password => ENV['PASSWORD'],
  :domain => 'gmail.com',
  :enable_starttls_auto => true
}

