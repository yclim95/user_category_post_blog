Rails.application.routes.draw do
  resources :categories
  resources :posts
  root 'homes#index'
end
