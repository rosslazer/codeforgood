Cfg::Application.routes.draw do
  

  get "items/all"

  get "items/broken"

  get "items/returnable"


  get '/api/tools_by_location/:id', to: 'api#tools_by_location'

  resources :locations




  devise_for :users

  get "main/hello"
  get "getuser/index"

end
