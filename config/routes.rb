Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'posts#index'

  resources :users, only: [:show]
  resources :posts , only:[:index, :new, :create, :edit, :update, :show]
  resources :maps , only:[:index, :new, :create, :show]
  resources :addresses, only:[:new, :create, :edit, :update]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
