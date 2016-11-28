Rails.application.routes.draw do


  get 'pages/home'

  root 'pages#home'
  get '/home' => 'pages#home'

  get '/users/edit' => 'users#edit', as: 'edit_user'
  resources :users, :except => [:edit]
  resources :lunchitems, :lunchtypes, :locations

end
