Rails.application.routes.draw do
  devise_for :users
    resources :blogs

    resources :tasks

    resources :classrooms

    get "gpas" => "gpas#index"
end
