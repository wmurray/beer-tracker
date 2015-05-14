Rails.application.routes.draw do
  resources :beers, only: [:new, :create, :index]
end
