Rails.application.routes.draw do
  root to: 'statics#index'

  resources :users, only: [:show, :create, :update, :destroy]

  resources :polishes,  only: [:index, :show, :create, :update, :destroy] do
    resources :states, only: [:index, :show, :create, :update, :destroy]
  end

  get '/login', to: "sessions#login", as: 'login'

  get '/signup', to: "sessions#signup", as: 'signup'

  post '/login', to: "sessions#attempt_login"

  post '/signup', to: "sessions#create"

  get '/home', to: "sessions#home", as: 'home'

  delete '/logout', to: "sessions#logout", as: "logout"
end
