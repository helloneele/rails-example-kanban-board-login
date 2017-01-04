Rails.application.routes.draw do

  resources :users, only: [ :new, :create ]

  resources :sessions, only:  [ :new, :create, :destroy ]

  resources :boards do
    resources :cards
  end
  root 'boards#index'

  get  '/login'  => 'sessions#new'
  post '/login'  => 'sessions#create'
  get  '/logout' => 'sessions#destroy'
end
