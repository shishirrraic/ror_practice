Rails.application.routes.draw do
  resources :skills
  get 'info/index'
  root "info#index"
  resources :non_scaffold_skills
  resources :works
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
