Rails.application.routes.draw do
  root to: 'restaurants#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  resources :restaurants, only: [ :index, :new, :create, :show] do
    resources :reviews, only: [ :new, :create ]
  end
  # get 'restaurants/:id/reviews' to: 'restaurants#show'
end
