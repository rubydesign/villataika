source 'https://rubygems.org'
gem "rake" , "0.9.6"
gem 'rails', '~> 3.2.15'
#gem "haml"
group :development, :test do
  gem 'sqlite3'
  gem "better_errors"
  gem 'quiet_assets'
end
gem 'email_validator'
gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2'
  gem 'coffee-rails', '~> 3.2'
  gem 'jquery-ui-rails'
  gem "therubyracer"
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

end

group :production do
  gem 'mysql'
  gem 'mongrel'
  gem 'uglifier', '>= 1.0'
end
 

