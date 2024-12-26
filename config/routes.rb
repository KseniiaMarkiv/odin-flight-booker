Rails.application.routes.draw do
  root "flights#index"
  # get 'flights/reset', to: 'flights#reset', as: 'reset_flights'
  # resources :flights, only: [:index]

  resources :flights, only: [:index] do
    collection do
      get :reset
    end
  end
  resources :bookings, only: [:new, :create]
end
