# encoding: UTF-8

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require 'engine_template/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'engine_template'
  s.version     = EngineTemplate::VERSION
  s.authors     = ['Gregory Romé']
  s.email       = ['gregory.rome@gmail.com']
  s.homepage    = 'https://github.com/gpr/engine_template'
  s.summary     = 'Summary of EngineTemplate.'
  s.description = 'Description of EngineTemplate.'
  s.license     = 'AGPL-3'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 4.2'
  s.add_dependency 'simple_form'
  s.add_dependency 'table-for'
  s.add_dependency 'kaminari'
  s.add_dependency 'ruby-progressbar'
  s.add_dependency 'responders'
  s.add_dependency 'best_in_place'
  s.add_dependency 'pundit'

  s.add_development_dependency 'ptools'
end
