source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'activemodel', '~> 6.0.2', ">= 6.0.2.2"
gem 'activejob', '~> 6.0.2', ">= 6.0.2.2"
gem 'activerecord', '~> 6.0.2', ">= 6.0.2.2"
gem 'activestorage', '~> 6.0.2', ">= 6.0.2.2"
gem 'actionpack', '~> 6.0.2', ">= 6.0.2.2"
gem 'actionmailer', '~> 6.0.2', ">= 6.0.2.2"
gem 'actiontext', '~> 6.0.2', ">= 6.0.2.2"
gem 'actionview', '~> 6.0.2', ">= 6.0.2.2"
gem 'railties', '~> 6.0.2', ">= 6.0.2.2"

gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
# if you update this, you have to update yarn upgrade @rails/webpacker to the same version
gem 'webpacker', '5.0.1'
# if you update this, you have to update yarn upgrade turbolinks to the same version
gem 'turbolinks', '5.2.1'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem 'slim-rails', '~> 3'
gem 'devise', '~> 4.7'

gem 'view_component', '~> 2.2'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry-byebug'
  gem 'strong_migrations', '~> 0.6'
  gem 'bullet'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'minitest-reporters'
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
