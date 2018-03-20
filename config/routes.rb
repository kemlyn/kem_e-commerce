Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :products
    resources :categories
  end
  resources :products
  resources :categories

  root to: 'products#index'
end
