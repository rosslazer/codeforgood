Cfg::Application.routes.draw do
  

  get "items/all"

  get "items/broken"

  get "items/returnable"


  get '/api/tools_by_location/:id', to: 'api#tools_by_location'

  match 'api/new_item' => 'api#new_item', :via => :post

  resources :locations

  resources :items


  devise_for :users

  get "main/hello"
  get "getuser/index"

end
