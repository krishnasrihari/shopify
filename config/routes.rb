Rails.application.routes.draw do
  resources :accounts
  root 'dashboard#index'
end
