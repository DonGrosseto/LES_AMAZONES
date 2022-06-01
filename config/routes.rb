Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :trips, only: [:index, :show, :new, :create, :edit, :update] do
    member do
      resources :bookings, only: [:create, :destroy]
    end
  end
  resources :bookings, only: [:index1, :index2, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
