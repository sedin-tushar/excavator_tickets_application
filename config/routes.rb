# config/routes.rb
Rails.application.routes.draw do
  namespace :api do
    resources :tickets, only: [:create, :show]
  end
  root "tickets#index"
  resources :tickets
end
