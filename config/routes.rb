Rails.application.routes.draw do
  root to: "posts#index"

  resources :users
  resources :posts

  post "sign_up", to: "users#create"
  get "sign_up", to: "users#new"

  post "sign_in", to: "sessions#create"
  delete "sign_out", to: "sessions#destroy"
  get "sign_in", to: "sessions#new"
end
