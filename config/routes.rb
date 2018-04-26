Rails.application.routes.draw do
  get 'sessions/new'

  resources :admin_administrate_proyects
  resources :user_funds_proyects
  resources :user_buys_promises
  resources :descriptive_pages
  resources :videos
  resources :images
  resources :promises
  resources :proyects
  resources :profiles
  resources :admins
  resources :users
  get 'home/index'

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
