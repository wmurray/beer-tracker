Rails.application.routes.draw do
  resources :beers, only: [:new, :create, :index, :edit, :update]
end
