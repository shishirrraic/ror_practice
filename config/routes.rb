Rails.application.routes.draw do
  resources :skills
  get 'info/index'
  root "info#index"
  get "/NSSkills", to: "non_scaffold_skills#index"
  get "/NSSkills/:id", to: "non_scaffold_skills#show"
  
  resources :works
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
