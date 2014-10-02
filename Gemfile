source 'https://rubygems.org'

ruby '2.1.3'
gem 'rails', '4.1.6'

# Servers
gem 'puma'

# Multi-environment configuration
# gem 'figaro'

# API
# gem 'rabl'

# ORM
gem 'pg'

gem 'devise' # User Authentication
gem 'sendgrid', '~> 1.2.0' # Emails

gem 'simple_form'
gem 'summernote-rails' #wysiwyg
gem 'addressable' # better URI checking

gem 'sidekiq', '~> 3.1.3' # Async queue
gem 'sinatra', '>= 1.3.0', :require => nil

gem "combined_time_select", "~> 1.0.1"
gem 'gibbon' #mailchimp connector

gem 'griddler'
gem 'griddler-sendgrid'

gem 'randomized_field', '~> 0.1.0' # builds user_keys

gem 'whenever', :require => false #schedule rake tasks

# Pagination
# gem 'kaminari'

# App monitoring
gem 'newrelic_rpm'

# Security
# gem 'secure_headers'

# Miscellanea
gem 'google-analytics-rails'
gem 'haml'

# gem 'http_accept_language'
# gem 'resque', require: 'resque/server' # Resque web interface

# Assets
gem 'autoprefixer-rails'
gem 'coffee-rails', '~> 4.0.0'
gem 'haml_assets'
gem 'i18n-js'
gem 'jquery-rails'
gem 'sass-rails', '~> 4.0.3'
gem 'twbs_sass_rails'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug'
  gem 'delorean'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails'
end

group :development do
  #gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'meta_request'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'capybara'
  gem 'coveralls', require: false
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'rspec'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'webmock', require: false
end

group :staging, :production do
  #gem 'puma_auto_tune'
  gem 'rack-timeout'
  #gem 'rails_12factor'
end
