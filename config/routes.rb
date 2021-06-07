Rails.application.routes.draw do
  root "foods#index"
  resources :foods
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
