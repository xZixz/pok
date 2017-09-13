Rails.application.routes.draw do
  resources :poker_games, only: [:index, :new, :create]
  resources :users, only: [:show]

  devise_for :users
end
