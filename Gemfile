source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"

gem "rails", github: 'rails/rails', branch: '7-0-stable'
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "kredis"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "sassc-rails"
gem 'net-smtp'
gem 'net-imap'
gem 'net-pop'
gem 'cssbundling-rails'

gem 'alphavantagerb', '~> 1.4'
gem 'better_errors', '~> 2.9'
gem 'binding_of_caller', '~> 1.0'
gem 'dotenv-rails', '~> 2.7'
gem 'ffaker', '~> 2.18'
gem 'stock_quote', '~> 3.0'
#gem 'all_futures', '~> 1.0', '>= 1.0.3'

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem 'annotate'
  gem 'rspec-rails', '~> 5.0.0'
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end
