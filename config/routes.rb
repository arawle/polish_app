Rails.application.routes.draw do
  devise_for :users
  root to: 'statics#index'

  resources :polishes,  only: [:index, :show, :create, :update, :destroy] do
    resources :states, only: [:index, :show, :create, :update, :destroy]
  end
end
