require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Assigment12
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.default_url_options = { host:'localhost', port: '3000' }
    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.default :charset => "utf-8"
    config.action_mailer.smtp_settings = {
        :address => "smtp.gmail.com",
        :port => 587,
        :domain => 'localhost:3000',
        :user_name => "felipewebtechnologies@gmail.com",
        :password => "fionayfender1996",
        :authentication => :plain,
        :enable_starttls_auto => true
    }
  end
end
