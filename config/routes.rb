Rails.application.routes.draw do
  resources :users, only: [:index, :create]
  # get "users/" => "users#index"
  # post "users/" => "users#create"
  get "users/:name" => "users#show"
end