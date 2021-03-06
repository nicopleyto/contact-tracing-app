Rails.application.routes.draw do
  resources :customers
  devise_for :users, skip: :registration
  resources :users, only: [:index, :new, :create, :edit, :update, :destroy] #explicitly add routes for user to prevent conflict with devise routes

  get 'admin_index', to: 'customers#admin_index'
  root 'customers#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
