Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "articles#index"

  resources :articles

  get "users/create", to: "users#new"
  resources :users, only: [:index, :show, :new, :create]
  

end