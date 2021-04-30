Rails.application.routes.draw do
  devise_for :accounts

  # dashboard
  get "/dashboard" => "accounts#index"

  root to: "public#homepage"
end
