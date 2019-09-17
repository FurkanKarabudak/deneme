Rails.application.routes.draw do
  resources :vehicles
  root 'vehicles#index'
  resources :drivers
  root 'drivers#index'
  resources :vehicles_comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
