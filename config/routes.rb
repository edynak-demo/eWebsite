Rails.application.routes.draw do
  resources :portfolios
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'news', to: 'pages#news'
  get 'store', to: 'pages#store'
  resources :tutorials
  
  root to: 'pages#home'
end
