Rails.application.routes.draw do
  resources :bonsai_items
  resources :carts
  resources :bonsais
  devise_for :users, controllers: {
    registrations: 'registrations'
  }


  root 'bonsais#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
