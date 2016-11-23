Rails.application.routes.draw do
  get "/auth/:provider/callback" => "sessions#create_from_omniauth"
  get "/auth/facebook", as: "facebook_sign_in"

  resources :listings
  resources :users, only: [:show, :edit, :update, :destroy]

  root to: 'welcome#index'
end
