Rails.application.routes.draw do
  resources :poker_games, only: [:index, :new, :create, :edit, :update] 
  resources :users, only: [:show]

  devise_for :users
end
