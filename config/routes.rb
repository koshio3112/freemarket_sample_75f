Rails.application.routes.draw do
  devise_for :users

  root 'top#index'
  resources :users, only: :show
  get '/logout', to: 'users#index'
  resources :items, only: [:new, :create, :edit, :update, :show]
  resources :credit_cards, only: :new
  resources :buyings, only: [:new, :create]
end