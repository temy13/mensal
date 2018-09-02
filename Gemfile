source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara'
  gem 'selenium-webdriver'
  gem "faker"

  gem "rspec-rails"
  gem 'rails-controller-testing'
  gem "factory_bot_rails"
  gem "guard-rspec"
  gem "spring-commands-rspec"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'chromedriver-helper'
  gem "database_cleaner"
  gem "launchy"
  gem "shoulda-matchers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


gem 'annotate'
gem 'devise'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'haml-rails'
gem 'erb2haml'
gem 'simple_enum'
gem 'simple_form'
gem 'bootstrap'
gem 'jquery-ui-rails'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'twitter'
gem 'kaminari'
gem 'kaminari-bootstrap'
gem 'addressable', require: 'addressable/uri'
# Image Uploader
# gem 'carrierwave'
# gem 'rmagick', require: 'RMagick'
# gem 'carrierwave-data-uri'
gem 'activerecord-import'
gem "font-awesome-rails"
gem 'gon'
gem 'jquery-validation-rails'
gem 'google-analytics-rails'
gem 'lograge'
gem 'slack-notifier'
gem 'simple_enum'
# gem 'redis'
# gem 'redis-rails'
# gem 'redis-namespace'
# gem 'sidekiq'
gem 'sinatra', require: false
# gem 'rakuten_web_service'
gem 'whenever', require: false
#gem 'activeadmin'
#gem 'cancancan'
# gem 'amazon-ecs'
# gem 'koala'
gem "serviceworker-rails"
gem "rename"
#gem 'webpush'
gem 'devise_invitable'
