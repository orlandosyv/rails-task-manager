Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"
  # create
  get "tasks/new", to: "tasks#new"
  # create step 2
  post "tasks", to: "tasks#create"
  # view
  get 'tasks/:id', to: 'tasks#show', as: :task
  # update step 1
  get "tasks/:id/edit", to: "tasks#edit", as: :edicion
  # update step 2
  patch "tasks/:id", to: "tasks#update"
  # delete
  delete "tasks/:id", to: "tasks#destroy"

end
