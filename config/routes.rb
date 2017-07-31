Rails.application.routes.draw do
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
end
