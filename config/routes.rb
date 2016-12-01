Rails.application.routes.draw do

  get 'posts/show'

  root 'pages#home'
  get '/home' => 'pages#home'

  get '/users/edit' => 'users#edit', as: 'edit_user'
  resources :users, :except => [:edit]
  resources :lunch_items, :locations
  get '/mylunchons' => 'users#mylunchons'

  get "/login" => 'session#new', :as => 'login'
  post "/login" => 'session#create'
  delete "/login" => 'session#destroy'

  get "/lunch_items/:id/rate" => 'lunch_items#rate', :as => 'rate_lunch_item'

end
