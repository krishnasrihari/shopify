Rails.application.routes.draw do
  resources :accounts do
    member do
      get 'test_connection'
    end
  end
  root 'dashboard#index'
end
