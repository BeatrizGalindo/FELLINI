Rails.application.routes.draw do
  get 'recommendations/index'
  get 'recommendations/create'
  get 'recommendations/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :movies, only: [:index, :show] do
    resources :movie_selections, only: [:create]
    resources :recommendations, only: [:create]
  end

  resources :friends, only: [:index, :destroy]
  resources :movie_selections, only: [:index, :update]
  get '/movie_selections/watched', to: 'movie_selections#watched', as: 'watched_movie_selections'
  get '/movie_selections/favourites', to: 'movie_selections#favourites', as: 'favourites_movie_selections'
  resources :users, only: [:show] do
    resources :friends, only: [:create]
  end
  resources :recommendations, only: [:index, :destroy]


  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :recommendations, only: [ :destroy ] do
        member do
          get :watch
        end
      end
    end
  end

end
