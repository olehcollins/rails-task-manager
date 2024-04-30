Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check
  #display all task
  get 'tasks', to: 'tasks#index'
  # get new task form
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # display a single task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # create a new task
  post '/tasks', to: 'tasks#create'
  # get the edit form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # update task
  patch 'tasks/:id', to: 'tasks#update'
  # delete task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete
  # Defines the root path route ("/")
  # root "posts#index"
end
