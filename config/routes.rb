# frozen_string_literal: true

Rails.application.routes.draw do
  resources :historical_prices

  # config/routes.rb
scope "(:locale)", locale: /en|pt-BR/ do
  get "welcome/index"
  get "/inicio" => "welcome#index", as: :inicio
  resources :coins do
    resources :historical_prices, only: [:index, :create, :show]
  end

  root "welcome#index"
end

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # config/routes.rb


  
end
