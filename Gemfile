source "https://rubygems.org"
ruby "2.2.1"

gem "rails", "4.2.2"

gem "shopify_app", "~> 6.0.0"
gem "jquery-rails", "~> 4.0.4"
gem "quiet_assets"
gem "therubyracer", platforms: :ruby

group :assets do
  gem "sass-rails"
  gem "coffee-rails"
  gem "uglifier", ">= 1.0.3"
end

group :development, :test do
  gem "thin"
  gem "less-rails-bootstrap"
  gem "pry-rails"
  gem "sqlite3"
  gem "better_errors"
  gem "binding_of_caller"
end

group :production do
  gem "pg"
end

gem 'puma'
gem 'jquery-minicolors-rails'
gem 'kaminari'
gem 'rack-cors', :require => 'rack/cors'
gem 'jbuilder'

group :development do
    gem 'capistrano',         require: false
    gem 'capistrano-rvm',     require: false
    gem 'capistrano-rails',   require: false
    gem 'capistrano-bundler', require: false
    gem 'capistrano3-puma',   require: false
end


