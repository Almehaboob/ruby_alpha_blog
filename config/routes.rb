Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  get 'signup', to: 'users#new'  # This generates the 'new' route for signup
  resources :users, only: [:new, :create]  # This generates routes for 'create' and 'new'
end
