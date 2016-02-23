Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  resources :categories
  resources :posts
  root 'homes#index'
  ActiveAdmin.routes(self)
end
