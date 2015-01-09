Rails.application.routes.draw do
  devise_for :users
  resources :pages
  resources :links
  
  root 'pages#index'

end
