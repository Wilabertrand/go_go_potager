Rails.application.routes.draw do
  get 'dashboards/show'
  devise_for :users
  root to: 'pages#home'
  resources :potagers do 
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :destroy]
  resources :dashboards, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
