Rails.application.routes.draw do

  root 'welcome#home'

  get '/signup', to: 'runners#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  resources :runners
  resources :sessions, only: [:new, :create, :destroy]
end
