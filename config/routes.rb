Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'products#index'

  namespace :api, defaults:{format: 'json'}  do
    namespace :v1 do
      resources :products
      devise_for :users

      post 'auth_user' => 'authentication#authenticate_user'
      get 'home' => 'home#index'
    end
  end

  resources :products
  devise_for :users

end
