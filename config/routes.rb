Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
