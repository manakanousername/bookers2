Rails.application.routes.draw do
  get 'users/edit'
  get 'users/show'
  get 'users/index'
  devise_for :users
  resources :users, only: [:show, :edit, :index]
  resources :books, only: [:new, :create, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"  ##homes/topをトップページとして表示
end
