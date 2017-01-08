Rails.application.routes.draw do
  resources :boards do
    resources :cards
  end
  root 'boards#index'
  get '/auth/:provider/callback', to: 'sessions#create'
end
