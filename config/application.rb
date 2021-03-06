require File.expand_path('../boot', __FILE__)

require 'rails/all'
# require 'barnes'
# Barnes.start

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)
Dotenv::Railtie.load

module Dabbleme
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'UTC'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.autoload_paths << "#{config.root}/lib"

    # Devise
    config.assets.initialize_on_precompile = false

    config.assets.version = '1.0'
    #loads the local_env.yml configuration file
    config.before_configuration do
      env_file = File.join(Rails.root, 'config', 'local_env.yml')
      YAML.load(File.open(env_file)).each do |key, value|
        ENV[key.to_s] = value.to_s
      end if File.exist?(env_file)
    end

    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif, *.css, *.svg *.woff *.ttf *.eot *.js)

    # config.assets.precompile << Proc.new do |path|
    #       if path =~ /\.(css|js)\z/
    #         @assets ||= Rails.application.assets || Sprockets::Railtie.build_environment(Rails.application)
    #         full_path = @assets.resolve(path)
    #         app_assets_path = Rails.root.join('app', 'assets').to_path
    #         if full_path.starts_with? app_assets_path
    #           true
    #         else
    #           false
    #         end
    #       else
    #         false
    #       end
    #     end

    config.exceptions_app = self.routes

    config.action_mailer.delivery_job = "ActionMailer::MailDeliveryJob"

    config.middleware.use Rack::Attack
    config.middleware.use Rack::Affiliates
  end
end
