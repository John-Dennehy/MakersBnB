# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

ruby '2.6.0'

# gem "rails"
gem 'json'
gem 'rack'
gem 'rake'
gem 'sinatra'
gem 'dm-postgres-adapter'
gem 'data_mapper', '1.2.0'
gem 'capybara'
# gem 'capybara/rspec'
gem 'rubocop', '0.71.0'

group :test do
  gem 'database_cleaner'
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
  # gem 'timecop'
end
