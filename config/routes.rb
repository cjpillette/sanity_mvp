Rails.application.routes.draw do
  get 'welcome/homepage'

  resources :forum_posts
  resources :genres
  resources :forums
  resources :songs
  resources :playlists
  resources :users

  root 'welcome#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
