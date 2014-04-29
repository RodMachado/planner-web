source "https://rubygems.org"
#
# Needed for installs
#
gem "rack", "1.4.5"
gem 'rake' #, '0.8.7'
gem 'therubyracer', :platforms => :ruby
gem 'puma', :platforms => :ruby
gem 'turbo-sprockets-rails3'

platform :rbx do
  gem "racc", "1.4.9"
  gem "rubysl"
  gem "rdoc"
  gem "test-unit"
  gem "newrelic_rpm"
end

gem 'enumerations_mixin', :git => 'git://github.com/balen/enumerations_mixin.git'

# gem 'rack-mini-profiler'
# gem 'flamegraph'
# gem 'memory_profiler'

gem 'sidekiq'

gem 'i18n-active_record',
      :git => 'git://github.com/svenfuchs/i18n-active_record.git',
      :tag => 'rails-3.2',
      :require => 'i18n/active_record'
gem 'interpret'

# For locale in the route
# gem 'routing-filter'
gem "daemons"
gem 'delayed_job' 
gem 'delayed_job_active_record'

gem 'planner-core', :git => 'git://git.code.sf.net/p/conferenceplan/planner-core'
#gem 'planner-core', path: "/Users/balen/Projects/planner-core"

# Needed for the new asset pipeline
group :assets do
  gem 'sass-rails',   '>= 3.2'
  gem 'compass-rails'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier',     '>= 1.0.3'
  gem 'yui-compressor'
end

group :development do
  # bundler requires these gems in development
  # gem 'ruby-debug-ide'
  gem 'seed_dump', '0.5.3'
end
