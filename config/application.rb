require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Nomster
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  
    #precompile issue
    config.assets.initialize_on_precompile = false

    # Add the fonts path
    # config.assets.paths << "#{Rails.root}/app/assets/fonts"
    config.assets.paths << Rails.root.join("app", "assets", "fonts")

    # Precompile additional assets
    config.assets.precompile += %w( .svg .eot .woff .ttf)

  end
end
