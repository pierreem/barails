Rails.application.routes.draw do
  devise_for :beer_geeks
  resources :beers
  get '/notes/:beer_geek_name', to: 'notes#for', as: 'notes_for' 

  root "beers#index"
end
