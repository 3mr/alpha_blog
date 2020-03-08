Rails.application.routes.draw do
  # pages controller
  root 'pages#home'
  get 'about', to: 'pages#about'

  # articles controller
  resources :articles

  # users controller
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  # sessions controller
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
