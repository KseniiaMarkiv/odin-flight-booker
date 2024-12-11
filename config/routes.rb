Rails.application.routes.draw do
  get 'flights/index'
  root "flights#index"
  resources :flights, only: [:index]
end
