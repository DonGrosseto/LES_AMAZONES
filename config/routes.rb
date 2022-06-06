Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :chatrooms, only: :show do
    
    resources :messages, only: :create
    
  end
  
  resources :trips, only: [:index, :show, :new, :create, :edit, :update] do

    resources :bookings, only: [:create, :destroy]

  end

  resources :bookings, only: [:show]
  get "/bookings", to: "bookings#index", as: :dashboard
  get "/mybookings", to: "bookings#index2"
  get "/users/:id", to: "pages#user"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
