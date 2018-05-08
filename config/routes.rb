Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :groups do
   # resources :students
  #end
  root 'sessions#new'
  post '/login' => 'sessions#create'
  get '/show' => 'sessions#show'
  resources :groups
  delete '/logout' => 'sessions#destroy'
  get '/show/new' => 'groups#new'
  resources :groups
  post '/show/new' => 'groups#create'
  get '/show/show' => 'groups#show'
  get '/groups/:id/new' => 'students#new'
  get '/groups/:id' => 'groups#show', as: :show_group
  resources :students, :groups
  post '/groups/:id/create' => 'students#create', as: :create_student
  get '/student/:id' => 'package#show', as: :package
  get '/student/:id/show' => 'package#index'
  put '/student/:id/show' => 'package#update', as: :update
  get '/groups/:id/email' => 'students#email'

end
