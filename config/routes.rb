# Routes
Rails.application.routes.draw do
  
  get '/sessions' => 'sessions#index'

  get '/users/:id' => 'users#show'

  post '/sessions/create' => 'sessions#create'

end
