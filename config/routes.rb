Rails.application.routes.draw do
  root "flights#index"
  get 'flights/reset', to: 'flights#reset', as: 'reset_flights'
  resources :flights, only: [:index]
end
