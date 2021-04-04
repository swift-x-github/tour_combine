Rails.application.routes.draw do
  get 'home/index'
  devise_for :administrators
  devise_for :moderators
  devise_for :accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
