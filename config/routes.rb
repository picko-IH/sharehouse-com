Rails.application.routes.draw do
  devise_for :admin_users
  devise_for :users
  resources :houses, only: %i[index show]
  root to: 'houses#index'
  get '/houses', to: 'houses#index'
  get '/houses/:id', to: 'houses#show'
  
  namespace :admin do
    resources :houses do
      resources :rooms
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
