Rails.application.routes.draw do
  # get 'topics/new'
  get 'sessions/new'
  # get 'users/new'
  # get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/help'

  resources :users
  resources :topics

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorits', to: 'favorites#destroy'

  get 'comments/index'
  get 'comments/new'
  post '/comments', to: 'comments#create'

end
