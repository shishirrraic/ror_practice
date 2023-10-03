Rails.application.routes.draw do
  get 'info/index'
  root "practice_app#index"
  resources :works
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
