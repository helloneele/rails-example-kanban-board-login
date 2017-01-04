Rails.application.routes.draw do
  devise_for :users
  resources :boards do
    resources :cards
  end
  root 'boards#index'
end
