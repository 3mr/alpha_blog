Rails.application.routes.draw do
  # pages controller
  root 'pages#home'
  get 'about', to: 'pages#about'

  # articles controller
  resources :articles

  # users controller
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
