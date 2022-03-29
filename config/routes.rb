Rails.application.routes.draw do
  resources :generos
  resources :usuarios
  post "/auth/login", to: "authentication#login"
end
