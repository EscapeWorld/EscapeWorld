Rails.application.routes.draw do
  root 'site#index'

  # Devise Routes
  devise_for :users

  # Rails Admin Routes
  mount RailsAdmin::Engine => '/y', as: 'rails_admin'

  # Resource Routes
  resources :rooms
  resources :categories
  resources :photos
  resources :categories
  resources :locations
  resources :companies
end
