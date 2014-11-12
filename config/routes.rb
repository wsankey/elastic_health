Rails.application.routes.draw do
  resources :hospital
  root to: 'hospital#index'
end
