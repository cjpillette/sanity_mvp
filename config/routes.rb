Rails.application.routes.draw do
  resources :forums
  resources :genres
  resources :songs
  resources :playlists
  resources :users
  resources :forum_posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
