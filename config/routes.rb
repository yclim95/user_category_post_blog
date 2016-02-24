Rails.application.routes.draw do
  get 'pages/about'
  get 'pages/contact'
  get 'pages/resources'

  devise_for :admin_users, ActiveAdmin::Devise.config
  resources :categories
  resources :posts

  get '/about', :to => 'pages#about'
  get '/contact', :to => 'pages#contact'
  get '/resources', :to => 'pages#resources'
  get ':not_found', to: redirect('/') 
  root 'homes#index'
  ActiveAdmin.routes(self)
end
