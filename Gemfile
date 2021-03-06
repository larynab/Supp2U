source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.5'

gem 'jwt'

gem 'bundler'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# PgSearch builds named scopes that take advantage of PostgreSQL's full text search.
gem 'pg_search', '~> 2.3'
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

gem 'jwt'

gem 'stripe-ruby-mock', '~> 2.5.0', :require => 'stripe_mock'

gem 'stripe'

gem 'sendgrid-ruby'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'
gem "aws-sdk-s3", require: false

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#Auth Gems
gem 'knock'
gem 'active_model_serializers'
gem 'dotenv-rails'
gem 'faker'
gem 'omniauth-auth0'
gem 'omniauth-rails_csrf_protection'

# Faraday HTTP client (configure requests - embraces rack middleware concept)
gem 'faraday', '~> 0.15.4'

gem 'unsplash'
gem 'pexels', git: 'https://github.com/mikeholford/pexels'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# For us poor windows users...
gem 'wdm', '>= 0.1.0' if Gem.win_platform?

gem 'rswag'

gem 'rails-controller-testing'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.5'
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git', branch: 'rails-5'
  gem 'cucumber-rails', require: false
  gem 'factory_bot_rails'
end

group :test do 
  gem 'database_cleaner'
  gem 'simplecov', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'bullet'
end

group :production do
  gem 'pg', '>= 0.18', '< 2.0'
  gem 'rspec-rails', '~> 3.5'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
