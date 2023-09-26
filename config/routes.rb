Rails.application.routes.draw do
    resources :blogs

    resources :tasks

    resources :classrooms

    get "gpas" => "gpas#index"
end
