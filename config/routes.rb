Rails.application.routes.draw do
  devise_for :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #root "customers#index"
  root "categories#index"
  #root "products#index"

  #resources :customers

  resources :categories do
    resources :products
  end
end
