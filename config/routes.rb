Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'prototypes#index'
  resources :users, only: [:show]
  resources :prototypes do
    resources :comments, only: :create
  end
end
