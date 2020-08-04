Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#home'

  # get '/list', to: 'tasks#list'
  # get '/list/:id', to: 'tasks#find', as: "task"

  # get '/new', to: 'tasks#new'
  # post '/create', to: 'tasks#create'

  # delete '/list/:id', to: 'tasks#delete', as: "delete"
  resources :tasks

end
