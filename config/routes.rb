Rails.application.routes.draw do
  root 'static#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :comics, :readers, :reviews, :contributors
  # Defines the root path route ("/")
  # root "articles#index"
  get 'sessions/create' 
  get 'readers/signup' => 'readers#new'
  get 'contributors/signup' => 'contributors#new'
  get 'login' => 'sessions#new'
  get '/auth/github/callback' => 'sessions#create'
  # get '/auth/github' => 'sessions#create'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
