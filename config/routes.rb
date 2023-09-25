Rails.application.routes.draw do
  get 'gpa_calculator/calculate'
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :tasks

  root 'courses#index'
  resources :courses, only: [:index, :new, :create]

  resources :gpa_calculator
end
