Rails.application.routes.draw do
  get 'welcome/home'

  mount EngineTemplate::Engine => '/engine_template'
  root 'welcome#home'
end
