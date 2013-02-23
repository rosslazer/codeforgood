Cfg::Application.routes.draw do
  get "location/index"

  get "location/show"

  get "location/new"

  get "location/edit"

  get "location/create"

  get "location/update"

  get "location/destroy"

  get "main/hello"

  devise_for :users

end
