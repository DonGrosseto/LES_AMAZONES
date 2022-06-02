Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :trips, only: [:index, :show, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
