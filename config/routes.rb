Rails.application.routes.draw do
  get 'picture_events/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :events
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root 'events#index'

  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end

  resources :events, only: [:show] do
    resources :picture_events, only: [:create]
  end
end
