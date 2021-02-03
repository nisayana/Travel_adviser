Rails.application.routes.draw do
  
  resources :sightseeings

  #location
  get '/locations', to: 'locations#index'
  get '/locations/:id', to: 'locations#show'

  #review
  get '/reviews', to: 'reviews#index'
  get '/reviews/:id', to: 'reviews#show'
  get '/reviews/new', to: 'reviews#new'
  post '/reviews', to: 'reviews#create'
  delete '/reviews/:id', to: 'reviews#delete'

  #like
  get '/likes', to: 'likes#index'
  post '/likes', to: 'likes#create'

  #traveler
  get '/travelers', to: 'travelers#index'
  get '/travelers/:id', to: 'travelers#show'
  post '/login', to: 'travelers#login'
  post '/signup', to: 'travelers#signup'

end
