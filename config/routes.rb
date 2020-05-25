Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  get 'admin', to: 'pages#admin'

  resources :products
  resources :orders do
    resources :payments, only: :new
  end

  resources :order_gifts do
    resources :payment_gifts, only: :new
  end

  resources :line_items
    post 'line_items/:id/add', to: "line_items#add_quantity", as: "line_item_add"
    post 'line_items/:id/reduce', to: "line_items#reduce_quantity", as: "line_item_reduce"
  resources :carts
  post 'without_login', to: 'orders#without_login'
  post 'without_login', to: 'order_gifts#without_login'
  # resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
