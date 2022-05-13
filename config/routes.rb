Rails.application.routes.draw do
  resources :customers
  resources :users
  devise_for :users, skip: :registration
  root 'customers#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
