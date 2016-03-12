Rails.application.routes.draw do
  resources :locations
  resources :companies
  devise_for :users
  root 'site#index'
end
