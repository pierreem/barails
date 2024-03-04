Rails.application.routes.draw do
  devise_for :beer_geeks
  resources :beers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "beers#index"
end
