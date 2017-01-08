Rails.application.routes.draw do
  resources :boards do
    resources :cards
  end
  root 'boards#index'
  get '/auth/:provider/callback', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'
  match '/auth/:provider/callback', to: 'sessions#create',  via: [:get, :post]
  match '/auth/failure',            to: 'sessions#failure', via: [:get, :post]
end
