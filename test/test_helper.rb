# -----------------------------------------------------------------------------
# Testing task
if ENV['COVERAGE']

  require 'simplecov'
  require 'simplecov-html'
  require 'simplecov-rcov'

  class SimpleCov::Formatter::MergedFormatter
    def format(result)
      SimpleCov::Formatter::HTMLFormatter.new.format(result)
      SimpleCov::Formatter::RcovFormatter.new.format(result)
    end
  end

  SimpleCov.formatter = SimpleCov::Formatter::MergedFormatter
  SimpleCov.start 'rails'
end

# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

require File.expand_path('../../test/dummy/config/environment.rb',  __FILE__)
ActiveRecord::Migrator.migrations_paths = [File.expand_path('../../test/dummy/db/migrate', __FILE__)]
ActiveRecord::Migrator.migrations_paths << File.expand_path('../../db/migrate', __FILE__)
require 'rails/test_help'

require 'minitest/rails'
require 'minitest/rails/capybara'
if ENV['MINITEST_PRIDE']
  require 'minitest/pride'
else
require 'minitest/reporters'
require 'ci/reporter/rake/minitest'

Minitest::Reporters.use!(
    [MiniTest::Reporters::SpecReporter.new,
     MiniTest::Reporters::JUnitReporter.new('test/reports')],
    ENV,
    Minitest.backtrace_filter
)
end

require 'factory_girl_rails'

class MiniTest::Test
   include FactoryGirl::Syntax::Methods
end

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
