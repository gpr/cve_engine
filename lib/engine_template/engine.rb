require 'responders'
require 'kaminari'
require 'table-for'
require 'simple_form'
require 'gprrr'
require 'best_in_place'
require 'pundit'

module EngineTemplate
  class Engine < ::Rails::Engine
    isolate_namespace EngineTemplate

    config.generators do |g|
      g.test_framework :minitest, spec: true, fixture: false
      g.fixture_replacement :factory_girl, dir: 'test/factories'
      g.factory_girl true
      g.assets false
      g.helper false
      # If templates are supplied with the engine
      #g.templates.unshift File::expand_path('../templates', File.dirname(__FILE__))
    end

    config.responders.flash_keys = [ :success, :failure ]

    # test/factories is no longer a default path
    initializer 'factories', after: 'factory_girl.set_factory_paths' do
      FactoryGirl.definition_file_paths.unshift(File.join(File.dirname(__FILE__), '..', '..', 'test', 'factories')) if defined?(FactoryGirl)
    end
  end
end
