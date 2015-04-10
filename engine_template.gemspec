$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "engine_template/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "engine_template"
  s.version     = EngineTemplate::VERSION
  s.authors     = ["Gregory Romé"]
  s.email       = ["gregory.rome@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of EngineTemplate."
  s.description = "TODO: Description of EngineTemplate."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 4.2'
end
