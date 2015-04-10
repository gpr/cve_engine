module EngineTemplate
  class Engine < ::Rails::Engine
    isolate_namespace EngineTemplate

    config.generators do |g|
      g.test_framework :minitest, spec: true, fixture: false
      g.fixture_replacement :factory_girl, dir: 'test/factories'
      g.factory_girl true
      g.assets false
      g.helper false
    end
  end
end
