Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  get 'tweets/presentation' => 'tweets#presentation'
  resources :tweets
  resources :users, only: [:show]
end
