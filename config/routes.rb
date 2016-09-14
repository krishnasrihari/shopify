Rails.application.routes.draw do
  
  # Webhook routes
  get "webhooks/uninstall"
  post "webhooks/uninstall"

  # Shopify routes
  get 'shopify/authorize' => 'shopify#authorize'
  post 'shopify/authorize' => 'shopify#authorize'
  get 'shopify/install' => 'shopify#install'
  post 'shopify/install' => 'shopify#install'

  get 'dashboard/index' => 'dashboard#index'

  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/destroy'

  resources :orders do
    collection do
      get 'import'
    end
  end
  
  resources :products do
    collection do
      get 'import'
    end
    resources :variants  
  end

  resources :accounts do
    member do
      get 'test_connection'
    end
  end

  post "create_contest" => 'dashboard#create_contest'

  root 'dashboard#index'
end
