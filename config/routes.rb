Rails.application.routes.draw do

  root to: 'statics#index'

  devise_for :users, :controllers => {sessions: 'sessions'}

  resources :users, only: [:show]

  resources :polishes,  only: [:index, :show, :create, :update, :destroy] do
    resources :states, only: [:index, :show, :create, :update, :destroy]
  end

end
