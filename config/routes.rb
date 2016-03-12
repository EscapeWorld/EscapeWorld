Rails.application.routes.draw do
  resources :rooms
  resources :categories
  resources :photos
  resources :categories
  resources :locations
  resources :companies
  devise_for :users
  root 'site#index'
end
