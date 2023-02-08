# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :accounts
  resources :accounts, only: %i[index show edit destroy update]
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  root 'home#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
