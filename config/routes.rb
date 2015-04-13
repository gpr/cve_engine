EngineTemplate::Engine.routes.draw do
  get 'welcome/home'
  get 'welcome/dashboard'
  root 'welcome#home'
end
