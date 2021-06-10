Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :movies, only: [:index, :show] do
    resources :movie_selections, only: [:create]
  end
  resources :movie_selections, only: [:index, :update]
  get '/movie_selections/watched', to: 'movie_selections#watched', as: 'watched_movie_selections'
  get '/movie_selections/favourites', to: 'movie_selections#favourites', as: 'favourites_movie_selections'
end
