Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :users, only: [:show, :edit, :update, :destroy]
  get "/auth/:provider/callback" => "sessions#create_from_omniauth"
  get "/auth/facebook", as: "facebook_sign_in"
end
