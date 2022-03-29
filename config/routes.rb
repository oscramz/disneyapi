Rails.application.routes.draw do
  resources :usuarios
  post "/auth/login", to: "authentication#login"

  namespace :api, defaults: { format: :json } do
    resources :usuarios, only: %i[create show] do
      get :avatar, on: :member
    end
  end
end
