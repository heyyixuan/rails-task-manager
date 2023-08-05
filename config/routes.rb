Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "list", to: "tasks#list", as: "tasks"
  get "list/new", to: "tasks#new", as: "new_task"
  post "list", to: "tasks#create"
  get "list/:id", to: "tasks#show", as: "show_task"
  get "list/:id/edit", to: "tasks#edit"
  patch "list/:id/edit", to: "tasks#update", as: "update_task"
  delete "list/:id", to: "tasks#destroy", as: "destroy_task"
end
