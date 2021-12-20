Rails.application.routes.draw do
  devise_for :users
  root 'course#index'

  get '/auth', to: 'auth#new'
  post '/auth', to: "auth#create"
  post '/auth/microsoft', to: 'auth#microsoft'
  delete '/auth', to: 'auth#destroy'

  post '/users', to: 'users#create'

  get '/course', to: 'course#index' # information about course
  get '/labs/:id', to: 'labs#show', as: 'lab'
  get '/labs', to: 'labs#index'

  get '/tasks/new', to: 'task#new'
  post '/tasks', to: 'task#create'

  # for logged in users
  get '/results', to: 'results#index'
end
