Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'welcome/home'
  get 'welcome/get_flash'
  mount CveEngine::Engine => '/cve_engine'
  root 'welcome#home'
end
