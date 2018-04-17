Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :products
    resources :categories
    resources :users do
      member do
        get :restore
      end
    end
  end
  resources :basket_items
  resources :orders
  resources :products
  resources :categories do
    resources :products
  end

  root to: 'products#index'
end
