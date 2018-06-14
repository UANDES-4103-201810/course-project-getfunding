Rails.application.routes.draw do


  devise_for :users, controller: {:omniauth_callbacks => 'callbacks'}
  resources :featureds
  resources :descriptive_pages
  resources :videos
  resources :images
  resources :promises
  resources :wishlists
  resources :categories
  resources :user_funds_projects
  resources :projects
  post "/sessions/new", to: "sessions#create"



  resources :user_buys_promises
  resources :profiles
  get 'home/index'
  get 'admin_sees_user/index'
  get 'admin_sees_user/make_admin'
  get 'admin_sees_user/destroy'
  get 'user_projects/index'
  get 'search/index'

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
