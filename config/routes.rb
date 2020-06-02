Rails.application.routes.draw do
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/help', to: 'static_pages#help'
  get '/profile', to: 'static_pages#profile'
  # resources :bonsai_items
  # resources :carts
  resources :bonsais do
    resources :reviews
  end

  devise_for :users, controllers: {
    registrations: 'registrations',
    omniauth_callbacks: 'omniauth_callbacks'
  }
  get 'bonsais/cart', to:'bonsais#cart_path', as: 'cart_path'
  get 'bonsais/add_to_cart/:id', to:'bonsais#add_to_cart', as: 'add_to_cart'
  get 'bonsais/remove_from_cart/:id', to: 'bonsais#remove_from_cart', as: 'remove_from_cart'
  # delete 'bonsais/remove_from_cart/:id', to: 'bonsais#remove_from_cart', as: 'remove_from_cart'

  root :to => 'bonsais#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
