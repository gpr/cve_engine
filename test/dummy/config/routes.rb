Rails.application.routes.draw do
  devise_for :users
  get 'welcome/home'
  get 'welcome/get_flash'

  mount EngineTemplate::Engine => '/engine_template'
  root 'welcome#home'
end
