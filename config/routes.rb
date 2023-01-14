Rails.application.routes.draw do
  
  resources :categories do
    resources :expenses
  end

  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splashs#index"
end
