Rails.application.routes.draw do
  devise_for :accounts

  # dashboard
  get "/dashboard" => "accounts#index"

  resources :posts, only: [:new, :create, :show]

  root to: "public#homepage"
end
