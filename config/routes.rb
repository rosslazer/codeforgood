Cfg::Application.routes.draw do
  

  get "items/all"

  get "items/broken"

  get "items/returnable"

  resources :locations




  devise_for :users

  get "main/hello"
  get "getuser/index"

end
