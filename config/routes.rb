Flickr::Application.routes.draw do
  get "users/index"
  get "users/allusers"
  get "users/register"

  root to: 'users#index'
end
