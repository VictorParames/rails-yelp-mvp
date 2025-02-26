Rails.application.routes.draw do
    get "up" => "rails/health#show", as: :rails_health_check
    resources :restaurants, only: [:index, :new, :create, :show] do
      resources :reviews, only: [:new, :create]
    end
    end
