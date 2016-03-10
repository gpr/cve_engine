Rails.application.routes.draw do
  devise_for :users
  get 'welcome/home'
  get 'welcome/get_flash'

  mount CveEngine::Engine => '/cve_engine'
  root 'welcome#home'
end
