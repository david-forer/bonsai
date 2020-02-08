Rails.application.routes.draw do
  resources :bonsais
  devise_for :users, controllers: {
    registrations: 'registrations'
  }


  root 'bonsai_shop#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
