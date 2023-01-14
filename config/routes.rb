Rails.application.routes.draw do
  get 'expenses/new'
  
  resources :categories

  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#index"
end
