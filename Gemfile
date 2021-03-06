source 'https://rubygems.org'

gem 'rake', '~> 10'

# Declare your gem's dependencies in rails_cve_engine.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Windows
def windows_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /mingw|mswin/i ? require_as : false
end
# Linux
def linux_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /linux/ ? require_as : false
end
# Mac OS X
def macos_only(require_as)
  RbConfig::CONFIG['host_os'] =~ /darwin/ ? require_as : false
end

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

group :development do
  # FIXME use spring generates a lot of issues
  # gem "spring"
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'redcarpet'

  gem 'yard'
  gem 'yard-minitest-spec'
  gem 'yard-activerecord'

  gem 'gprrr', path: 'vendor/gems/gprrr'
end

group :development, :test do
  gem 'byebug'

  gem 'factory_girl_rails'
  gem 'minitest-spec-rails'
  gem 'minitest-rails-capybara'
  gem 'minitest-reporters'
  gem 'terminal-notifier-guard', require: macos_only('terminal-notifier-guard')
  gem 'libnotify', require: linux_only('libnotify')
  gem 'guard', require: false
  gem 'guard-minitest', require: false
  gem 'faker'

  gem 'simplecov', require: false
  gem 'simplecov-rcov'

  gem 'bootstrap-sass', '~> 3.3.1'
  gem 'kaminari-bootstrap', '~> 3'
  gem 'font-awesome-rails'
  gem 'font-awesome-sass', '~> 4.4.0'
  gem 'rails_admin'
  gem 'sqlite3'
  gem 'devise'
  gem 'pundit'
end
