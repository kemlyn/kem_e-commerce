Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :products
    resources :categories
  end
  resources :basket_items
  resources :products
  resources :categories do
    resources :products
  end

  root to: 'products#index'
end
