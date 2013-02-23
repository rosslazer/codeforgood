Cfg::Application.routes.draw do
  get "main/hello"

  devise_for :users

end
