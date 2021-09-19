Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:create, :index, :show, :destroy]
  resources :users, only: [:show, :index, :destroy]
end
