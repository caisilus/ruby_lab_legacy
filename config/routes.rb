Rails.application.routes.draw do
  root 'course#index'

  get '/auth/new', to: 'auth#new'
  post '/auth', to: "auth#create"
  post '/auth/microsoft', to: 'auth#microsoft'
  delete '/auth', to: 'auth#destroy'

  post '/users', to: 'users#create'

  get '/course', to: 'course#index'
  get '/course/labs/:lab_id', to: 'labs#show'
  get '/labs', to: 'labs#index' # information about labs

  # for logged in users
  get '/results', to: 'results#index'
end
