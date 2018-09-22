Rails.application.routes.draw do
  get "/" => "home#top"
  get "about" => "home#about"
  get "posts/index" => "posts#index"
  devise_for :users
  root 'pages#index'
  get 'pages/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
