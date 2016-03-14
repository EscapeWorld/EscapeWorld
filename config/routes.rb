Rails.application.routes.draw do
  root 'site#index'

  match '/learn' => 'site#learn', via: :get
  # Devise Routes
  devise_for :users

  # Rails Admin Routes
  mount RailsAdmin::Engine => '/y', as: 'rails_admin'

  get '/locations/api'

  # Resource Routes
  resources :rooms
  resources :categories
  resources :photos
  resources :categories
  resources :locations
  resources :companies

end
