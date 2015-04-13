Rails.application.routes.draw do
  #mount EngineTemplate::Engine => '/engine_template'
  mount EngineTemplate::Engine, at: '', as: 'engine_template'
end
