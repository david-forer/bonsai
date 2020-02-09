# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

#Allows carrierwave to work properly
require 'carrierwave/orm/activerecord'