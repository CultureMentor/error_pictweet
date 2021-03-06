Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tweets#index'
  resources :users, only: :show
  resources :comments, only: :create
  resources :tweets,only:[:index,:new,:edit,:update,:show,:destroy]
    collection do
      get 'search'
    end
  end
end
