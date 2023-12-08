Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "home#index"

  get "/home", to: "home#index"

  resources :owners, only: [:new, :create, :edit, :update, :show, :destroy]
  resources :renters, only: [:new, :create, :edit, :update, :show, :destroy]

  get '/owner/login', to: 'ownersessions#login'
  post '/owner/login', to: 'ownersessions#create'
  post '/owner/logout', to: 'ownersessions#destroy'
  get '/owner/logout', to: 'ownersessions#destroy'

  get '/renter/login', to: 'rentersessions#login'
  post '/renter/login', to: 'rentersessions#create'
  post '/renter/logout', to: 'rentersessions#destroy'
  get '/renter/logout', to: 'rentersessions#destroy'
  

  # Defines the root path route ("/")
  # root "articles#index"
end
