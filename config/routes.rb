Rails.application.routes.draw do
  devise_for :users
  resources :pages
  resources :links
  resources :comments, :only => [:new, :create]

  root 'pages#index'

end
