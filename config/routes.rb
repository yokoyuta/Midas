Rails.application.routes.draw do
  post "favorites/:post_id/create" => "favorites#create"
  post "favorites/:post_id/destroy" => "favorites#destroy"
  get "posts/index" => "posts#index"
  get "posts/favorite" => "posts#favorite"
  
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  get "/" => "home#top"
  get "about" => "home#about"
  get "posts/index" => "posts#index"
  devise_for :users
  root 'pages#index'
  get 'pages/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
