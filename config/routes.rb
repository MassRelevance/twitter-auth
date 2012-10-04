TwitterAuth::Engine.routes.draw do
  resource :session

  match '/login' => 'sessions#new', :as => :login
  match '/logout' => 'sessions#destroy', :as => :logout
  match '/oauth_callback' => 'sessions#oauth_callback', :as => 'oauth_callback'
end
