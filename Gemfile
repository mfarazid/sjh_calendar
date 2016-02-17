source 'https://rubygems.org'

# ############################
# Core
# ############################
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'
gem 'thin'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'
gem 'devise'
gem 'sms-easy'
gem 'hijri_date'
gem 'active_hash'
gem 'bourbon'
gem 'high_voltage'
group :production do 
  gem 'mysql2', '= 0.3.16'
  gem 'rails_12factor'
end

# ############################
# Interface
# ############################
group :assets do
  gem 'sass-rails', '~> 4.0.3'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'therubyracer', platforms: :ruby
end
gem 'jquery-rails'
gem 'jquery-ui-rails','~> 4.2.1'
gem 'haml'
gem 'haml-rails'
gem 'execjs'
gem 'bootstrap-sass'
gem 'bootstrap_form'
# display nicer notifications using bootstrap 
# gem 'toastr-rails'
gem 'font-awesome-rails'
gem 'jquery-datatables-rails', '~> 2.1.10.0.2'
gem 'pickadate-rails'
# gem 'icheck-rails',  github: 'ricardodovalle/icheck-rails'
gem 'bootstrap_validator_rails', '~> 1.1.0'

# ############################
# Testing
# ############################
group :development, :test do
  gem 'rspec-rails'
  gem "factory_girl_rails"
  gem "guard-rspec"
  gem "capybara"
  gem "faker"
  gem 'rb-fsevent'
  gem 'growl'  
  gem 'database_cleaner'
  gem 'launchy'
  gem 'poltergeist'
  gem 'spork'
  gem 'guard-spork'
  gem 'sqlite3'
end

# ############################
# Utilities
# ############################
group :development do 
  gem 'meta_request'
  gem 'pry-rails'
  gem 'rails-erd'
  gem 'better_errors', '1.1.0'
  gem "binding_of_caller"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0'
end
