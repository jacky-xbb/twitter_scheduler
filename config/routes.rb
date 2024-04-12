Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[edit update]
  resource :posts, only: %i[index create]

  get '/auth/twitter/callback', to: 'twitter_auth#create'

  root 'posts#index'
end
