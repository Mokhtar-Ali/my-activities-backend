Rails.application.routes.draw do
  resources :reviews
  resources :chatrooms, only: [:index, :create, :show]
  resources :messages
  resources :categories
  resources :participants
  resources :activities
  resources :users

  post '/signup', to: 'users#create'
  post '/login', to: 'auth#login'
  get '/auto_login', to: 'auth#auto_login'
  post '/facebook', to: 'users#create'


    mount ActionCable.server => '/cable'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
