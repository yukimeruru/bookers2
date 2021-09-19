Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:name, :create, :index, :show, :destroy]
  resources :users, only: [:show]
end
