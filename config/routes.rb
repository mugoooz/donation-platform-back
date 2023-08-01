Rails.application.routes.draw do
  resources :donations
  resources :admins
  resources :beneficiaries
  resources :donors
  resources :charities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
