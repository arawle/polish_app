Rails.application.routes.draw do
  root to: 'statics#index'

  resources :users, only: [:show, :create, :update, :destroy]

  resources :polishes,  only: [:index, :show, :create, :update, :destroy] do
    resources :states, only: [:index, :show, :create, :update, :destroy]
  end
end
