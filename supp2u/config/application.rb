require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require 'yaml'
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Supp2u
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true


    config.before_configuration do
      env_file = File.join(Rails.root, 'config', 'local_env.yml')
      puts env_file
      YAML.load(File.open(env_file)).each do |key, value|
        if Rails.env == key["development"]
          ENV["DATABASE_URL"] = value["DATABASE_URL"]
        elsif Rails.env == key["production"]
          ENV["DATABASE_URL"] = value["DATABASE_URL"]
        end
      end
      puts ENV["DATABASE_URL"], "111111111"
    end
  end
end

