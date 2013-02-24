Cfg::Application.routes.draw do
  

  get "items/all"

  get "items/broken"

  get "items/returnable"


  get '/api/tools_by_location/:id', to: 'api#tools_by_location'
  get '/api/qr/:id', to: 'api#qr'


  match 'api/new_item' => 'api#new_item', :via => :post
  match 'api/check_out' => 'api#check_out', :via => :post

  resources :locations

  resources :items


  devise_for :users

  get "main/hello"
  get "getuser/index"

end
