Rails.application.routes.draw do
  root 'course#index'

  get '/auth', to: 'auth#new'
  post '/auth', to: "auth#create"
  post '/auth/microsoft', to: 'auth#microsoft'
  delete '/auth', to: 'auth#destroy'

  post '/users', to: 'users#create'

  get '/course', to: 'course#index' # information about course
  get '/labs/:id', to: 'labs#show', as: 'lab'
  get '/labs', to: 'labs#index'

  # for logged in users
  get '/results', to: 'results#index'
end
