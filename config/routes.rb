Rails.application.routes.draw do
  root 'hats#index'
  resources :hats
end
