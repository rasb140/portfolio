Rails.application.routes.draw do
  get 'walk_of_life', to: "walk_of_lives#index"
  get 'hobbies', to: "hobbies#index"
  get 'projects', to: "projects#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'download_cv', to: "pages#download_cv"
  # Defines the root path route ("/")
  root "pages#index"
end
