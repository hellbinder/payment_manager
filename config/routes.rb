ProTemplateApp31::Application.routes.draw do
  get "transactions/index"

  get "transactions/new"

  get "transactions/show"

  get "transactions/create"

  get "transaction/index"

  get "transaction/new"

  get "transaction/show"

  get "transaction/create"

  resources :accounts
  resources :payment_sources
  resources :payment_source_types
  devise_for :users
  root :to => 'home#index'
end
