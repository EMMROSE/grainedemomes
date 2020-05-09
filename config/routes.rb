Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :gifts, only: :index
  resources :products
  resources :orders do
    resources :payments, only: :new
  end
  resources :line_items
  resources :carts
  post 'without_login', to: 'orders#without_login'
end
