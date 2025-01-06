Rails.application.routes.draw do
  root "flights#index"
  resources :flights, only: [:index] do
    collection do
      get :reset
    end
  end
  resources :bookings, only: [:show, :new, :create]
end
