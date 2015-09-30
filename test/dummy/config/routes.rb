Rails.application.routes.draw do
  devise_for :users
  get 'welcome/home'

  mount EngineTemplate::Engine => '/engine_template'
  root 'welcome#home'
end
