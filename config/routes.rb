Rails.application.routes.draw do
  get "/homes/about" => "homes#about", as: "about"
  devise_for :users
  resources :users, only: [:show, :edit, :index]
  resources :books, only: [:new, :create, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/users/:user_id/books', to: 'books#index', as: 'user_books'
  root to: "homes#top"  ##homes/topをトップページとして表示

end
