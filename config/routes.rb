Rails.application.routes.draw do
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/help'
  # resources :bonsai_items
  # resources :carts
  resources :bonsais
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  get 'bonsais/add_to_cart/:id', to:'bonsais#add_to_cart', as: 'add_to_cart'
  get 'bonsais/remove_from_cart/:id', to: 'bonsais#remove_from_cart', as: 'remove_from_cart'
  # delete 'bonsais/remove_from_cart/:id', to: 'bonsais#remove_from_cart', as: 'remove_from_cart'

  root :to => 'bonsais#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
