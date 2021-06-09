Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :movies, only: [:index, :show] do
    resources :movie_selections, only: [:create]
  end
  resources :movie_selections, only: [:index, :update]
  get '/movie_selections/watched', to: 'movie_selections#watched', as: 'watched_movie_selections'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
