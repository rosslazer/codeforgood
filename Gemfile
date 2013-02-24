source 'https://rubygems.org'

ruby '1.9.3'


gem 'twitter-bootstrap-rails', :git => 'https://github.com/seyhunak/twitter-bootstrap-rails.git'

gem 'airbrake'
gem 'bourbon'
gem 'high_voltage'
gem 'jquery-rails'
gem 'pg'
gem 'psych'
gem 'rack-timeout'
gem 'rails', '>= 3.2.11'
gem 'simple_form'
gem 'thin'
gem 'devise'


group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

group :development do
  gem 'foreman'
end

group :development, :test do
  gem 'guard'
  gem 'guard-spork'
  gem 'rspec-rails'
  gem 'sham_rack'
end

group :test do
  gem 'bourne', require: false
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
end

group :staging, :production do
  gem 'newrelic_rpm'
end
