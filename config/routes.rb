Rails.application.routes.draw do
  resources :tasks

  # READ a list of tasks
  get "tasks", to: "tasks#index"
  # READ a indiviudal task
  get "tasks/:id", to: "tasks#show"
  # CREATE a new task
  post "tasks", to: "tasks#new"
  # UPDATE. Get a form
  get "tasks/:id/update", to: "tasks#edit"
  # UPDATE
  patch "tasks/:id", to: "tasks#update"
  # DESTROY a given task
  delete "tasks/:id", to: "tasks#destroy"

  # CREATE. Get a form
  # task#new

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
