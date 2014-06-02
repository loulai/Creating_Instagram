Rails.application.routes.draw do
  devise_for :users
  resources :posts do
  	resources :comments, only: [:create, :destroy]
  	resources :likes, only: [:create, :destroy]
  end
  root 'home#index'
  resources :hashtags
end
