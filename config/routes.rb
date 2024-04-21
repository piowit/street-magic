Rails.application.routes.draw do
  resources :users, only: %i[index new create edit update destroy]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  get "up" => "rails/health#show", as: :rails_health_check

  root "users#index"
end
