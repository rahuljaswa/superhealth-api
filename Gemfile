source "https://rubygems.org"

ruby "3.2.1"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 7.1.3", ">= 7.1.3.2"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"

gem 'active_model_serializers'
gem 'bonsai-elasticsearch-rails'
gem "bootsnap", require: false
gem 'devise'
gem 'devise_token_auth', '>= 1.2.0', git: "https://github.com/lynndylanhurley/devise_token_auth"
gem 'elasticsearch-model'
gem 'elasticsearch-rails'
gem "image_processing", "~> 1.2"
gem 'kaminari'
gem 'omniauth'
gem 'phony'
gem "rack-cors", :require => 'rack/cors'
gem 'public_suffix'
gem 'sidekiq'
gem 'sinatra', :github => 'sinatra/sinatra'
gem 'typhoeus'
gem "tzinfo-data", platforms: %i[ windows jruby ]

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"
# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"
