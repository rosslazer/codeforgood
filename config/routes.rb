Cfg::Application.routes.draw do
  

  resources :locations




  devise_for :users

  get "main/hello"
  get "getuser/index"

end
