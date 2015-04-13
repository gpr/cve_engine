begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

# -----------------------------------------------------------------------------
# Documentation task
require 'yard'

YARD::Config.load_plugin('minitest-spec')
YARD::Config.load_plugin('yard-activerecord')

YARD::Rake::YardocTask.new do |t|
  t.files = ['lib/**/*.rb', 'app/**/*.rb', 'db/schema.rb', 'test/**/*_test.rb']
  t.stats_options = ['--list-undoc']
end

# -----------------------------------------------------------------------------
# Loads tasks

APP_RAKEFILE = File.expand_path("../test/dummy/Rakefile", __FILE__)
load 'rails/tasks/engine.rake'

Bundler::GemHelper.install_tasks

# -----------------------------------------------------------------------------
# Testing task

require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end


task default: :test
