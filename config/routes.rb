Rails.application.routes.draw do
  devise_for :users
  resources :imags
  root "imags#index"
end
