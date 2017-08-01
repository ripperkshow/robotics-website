Rails.application.routes.draw do
  devise_for :users, path: '',path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :portfolios
  resources :users
  resources :pages
  resources :blogs
  
  get "blog/:id/delete", to: "blogs#destroy"
  
  get 'about', to: 'pages#about'
  root to: 'pages#home'
  get 'blogs', to: 'blogs#index'
  get 'contact', to: 'pages#contact'
  get 'donations', to: 'pages#donations'
  get 'portfolios', to: 'portfolios#index'
  
end
