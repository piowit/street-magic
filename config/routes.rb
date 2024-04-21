Rails.application.routes.draw do
  resources :users
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

  root "users#index"
end
