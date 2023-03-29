Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :eggs, only: [:index, :show, :create, :new]
  resources :temperatures
  resources :presures, only: [:index, :show, :create, :new]
  resources :results, only: [:index]
end
