Rails.application.routes.draw do
  get 'categories/show'
  get 'users/show'
  devise_for :users
  root to: 'posts#index'

  get 'posts/category/:id', to: 'posts#category'
  
  resources :users, only: [:show]
  resources :posts , only:[:index, :new, :create, :edit, :update, :show]
  resources :maps , only:[:index, :new, :create, :show]
  resources :addresses, only:[:new, :create, :edit, :update]
  resources :categories, only: [:show]
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
