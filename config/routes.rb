Rails.application.routes.draw do
  resources :characters
  resources :movies
  resources :genres
  resources :usuarios
  post "/auth/login", to: "authentication#login"
end
