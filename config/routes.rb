Rails.application.routes.draw do
  resources :houses, only: %i[index show]
  root to: 'houses#index'
  get '/houses', to: 'houses#index'
  get '/houses/:id', to: 'houses#show'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
