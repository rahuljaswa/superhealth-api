require 'sidekiq/web'

# Configure Sidekiq-specific session middleware
Sidekiq::Web.use ActionDispatch::Cookies
Sidekiq::Web.use ActionDispatch::Session::CookieStore, key: "_interslice_session"

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      post "/sync", to: "sync#all" 

      resources :activities
      resources :activity_types
      resources :activity_type_categories
      resources :images
      resources :meal_components
      resources :meals
      resources :measurements
      resources :measurement_type_categories
      resources :measurement_types
      resources :measurement_values
      resources :protocol_actions
      resources :protocols
      resources :users do
        member do
          get 'send_email_verification'
          get 'verify_email'
          get 'send_phone_number_verification'
          get 'verify_phone_number'
        end
      end
    end
  end

  mount_devise_token_auth_for 'User', at: '/api/v1/auth'

  mount Sidekiq::Web => '/sidekiq'
end
