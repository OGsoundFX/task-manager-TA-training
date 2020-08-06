Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#home'

  # get '/list', to: 'tasks#list'
  # get '/list/:id', to: 'tasks#find', as: "task"

  # get '/new', to: 'tasks#new'
  # post '/create', to: 'tasks#create'

  # delete '/list/:id', to: 'tasks#delete', as: "delete"

  get 'tasks', to: 'tasks#index'
  post 'tasks', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new', as: :new_task
  get 'tasks/:id', to: 'tasks#show', as: :task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
  get 'tasks/:id/mark_complete', to: 'tasks#mark_complete', as: :mark_complete
  # resources :tasks
end
