Rails.application.routes.draw do
  resources :featureds
  resources :descriptive_pages
  resources :videos
  resources :images
  resources :promises
  resources :wishlists
  resources :categories
  resources :user_funds_projects
  resources :projects
  resources :user_roles
  resources :users
  get 'sessions/new'

  resources :user_buys_promises
  resources :profiles
  get 'home/index'

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
