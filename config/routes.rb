Rails.application.routes.draw do

#users 
get '/users/new', to: 'users#new'
post '/users', to: 'users#create'

#sessions
get '/sessions/login', to: 'sessions#new'
post '/sessions', to: 'sessions#create'
get '/sessions/logout', to: 'sessions#destroy'

#posts
get '/posts/new', to: 'posts#new'
post '/posts', to: 'posts#create'

end
