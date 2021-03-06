Rails.application.routes.draw do
  
  root "home#index"

  resources :transactions
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get "statistic/:user_id", to: "statistic#generate", as: "statistic"
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
end