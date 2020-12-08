Rails.application.routes.draw do
  root 'static#index'
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[create index]
      resources :bookings, only: %i[create index destroy]
      post 'login', to: 'users#login'
      get 'auto_login', to: 'users#auto_login'
      resources :cars, only: %i[index create show destroy]
    end
  end
end
