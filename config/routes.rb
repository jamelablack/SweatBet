Rails.application.routes.draw do
  root to: 'ui#index'
  get 'ui(/:action)', controller: 'ui'
  resources :users, only: [:create, :show] do
    collection do
      get :search
    end
  end
  resources :teams, only: [:create, :show, :update] do
    collection do
      get :search
    end
  end
end
