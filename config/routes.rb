Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  get 'admin', to: 'pages#admin'
  get 'mentions_legales', to: 'pages#mentions_legales'

  resources :products
    get 'products/:id/research', to: "products#research", as: "product_research"
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
  resources :promotions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
