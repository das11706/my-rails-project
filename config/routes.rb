Rails.application.routes.draw do
  root 'static#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  resources :comics, only: [:show] do
    resources :reviews, only: [:show, :index, :new, :create]
  end

  resources :readers, only: [:show, :index] do
    resources :reviews, only: [:show, :index, :new, :edit, :update]
  end
  
  resources :comics, :readers, :reviews, :contributors
  # Defines the root path route ("/")
  # root "articles#index"
  # get 'sessions/create' 
  get 'signup' => 'readers#new'
 
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get '/auth/github/callback' => 'sessions#create_git'
  # get '/auth/github' => 'sessions#create'
  get '/mostreviews' => 'readers#most_reviews'
  
end
