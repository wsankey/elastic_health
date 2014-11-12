Rails.application.routes.draw do
  resources :hospital
  root to: 'hospital#index'

  get 'search', to: 'search#search'
end
