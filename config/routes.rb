Rails.application.routes.draw do
  get 'books/new'
  get 'books/index'
  get 'books/show'
  devise_for :user
  resources :books, only: [:new, :create, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
end
