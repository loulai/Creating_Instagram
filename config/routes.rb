Rails.application.routes.draw do
  devise_for :users
  resources :posts do
  	resources :comments, only: [:create, :destroy]
  end
  root 'home#index'
  resources :hashtags
  resources :comments, only: [:create, :destroy]
end
