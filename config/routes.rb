Rails.application.routes.draw do
 
  devise_for :users
  root to: 'pages#home'
  resources :potagers do 
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :destroy]
  get '/dashboard', to: 'dashboards#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
