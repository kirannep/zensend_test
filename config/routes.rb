Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users

  get '/hello', to: 'users#hello' 
  get 'users/new', to: 'users#new'
  post 'users/new', to: 'users#create'
  get 'users/show', to: 'users#show'
end
