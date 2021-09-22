Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'home#about'
  resources :books, only: [:create, :index, :show, :destroy, :edit]
  resources :users, only: [:show, :index, :destroy , :edit, :update]
end
