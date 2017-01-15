Rails.application.routes.draw do
  resources :boards do
    resources :cards
  end
  root 'boards#index'

  match '/auth/:provider/callback', to: 'sessions#create',  via: [:get, :post]
  match '/auth/failure',            to: 'sessions#failure', via: [:get, :post]
end
