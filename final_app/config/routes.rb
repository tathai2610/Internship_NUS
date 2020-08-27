Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :photos
  resources :albums

  resources :users, except: [:index,:destroy]

  root to: "home#guestfeed"
  get 'discover/photo', to: 'home#discover_photo'
  get 'discover/album', to: 'home#discover_album'
  get 'login', to: 'home#login'
  get 'signin', to: 'home#signin'
  namespace :admin do
    resources :users
  end
  get 'feed/photo', to: 'home#feed_photo'
  get 'feed/album', to: 'home#feed_album'

end
