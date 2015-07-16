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
      g.scaffold_controller :responders_controller
    end

    config.responders.flash_keys = [ :success, :failure ]
  end
end
