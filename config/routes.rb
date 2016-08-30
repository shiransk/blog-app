Rails.application.routes.draw do

#users 
get '/users/new', to: 'users#new'
post '/users', to: 'users#create'

#sessions
get '/sessions/login', to: 'sessions#new'
post '/sessions', to: 'sessions#create'
get '/sessions/logout', to: 'sessions#destroy'

#posts
get '/', to: 'posts#index'
get '/posts/index', to: 'posts#index'
get '/posts/new', to: 'posts#new'
post '/posts', to: 'posts#create'
get '/posts/:id', to: 'posts#show'
get '/posts/:id/edit', to: 'posts#edit'
patch '/posts/:id', to: 'posts#update'
delete '/posts/:id', to: 'posts#destroy'

#category 
get '/categories/index', to: 'categories#index'
get '/categories/new', to: 'categories#new'
patch '/categories', to: 'categories#create'


end
