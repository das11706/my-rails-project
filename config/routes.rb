Rails.application.routes.draw do
  get 'static/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :comics, :readers, :reviews, :contributors
  # Defines the root path route ("/")
  # root "articles#index"

  get 'signup' => 'readers#new'
  get 'login' => 'sessions#new'
  get '/auth/github/callback' => 'sessions#create'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
