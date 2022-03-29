Rails.application.routes.draw do
  resources :usuarios
  post "/auth/login", to: "authentication#login"
end
