Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  resources :users

  get "up" => "rails/health#show", as: :rails_health_check
  root "users#index"
end
