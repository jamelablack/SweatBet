Rails.application.routes.draw do
  root to: 'events#index', as: '/home'

  resources :users, only: [:create, :show]
  resources :teams, only: [:create, :show, :update]

  get '/sign_in', to: 'sessions#new'
  get '/sign_out', to: 'sessions#destroy'
end
