Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :photos
  resources :albums
  resources :users, except: [:index,:destroy]

  root to: "home#guestfeed"
  get 'discover/photo', to: 'home#discover_photo'
  get 'discover/album', to: 'home#discover_album'
  get 'feed/photo', to: 'home#feed_photo'
  get 'feed/album', to: 'home#feed_album'

  get 'newest', to: 'home#index'

  namespace :admin do
    resources :users
  end


end
