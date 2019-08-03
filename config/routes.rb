Rails.application.routes.draw do
  resources :houses, only: %i[index show]
  # get '/houses', to: 'houses#index'
  # get '/houses/:id', to: 'houses#show'
end
