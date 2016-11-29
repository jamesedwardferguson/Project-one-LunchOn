Rails.application.routes.draw do

  get 'session/new'

  root 'pages#home'
  get '/home' => 'pages#home'

  get '/users/edit' => 'users#edit', as: 'edit_user'
  resources :users, :except => [:edit]
  resources :lunchitems, :lunchtypes, :locations

  get "/login" => 'session#new', :as => 'login'
  post "/login" => 'session#create'
  delete "/login" => 'session#destroy'

end
