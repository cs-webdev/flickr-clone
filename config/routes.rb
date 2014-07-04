Flickr::Application.routes.draw do
  resources :users, only: [:show, :index]
  resources :images
  
  root to: 'users#index'
end
