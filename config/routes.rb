Rails.application.routes.draw do
  devise_for :users
  root 'servers#index'
  get "up" => "rails/health#show", as: :rails_health_check
  resources :servers, only: [:index, :show]
end
