Rails.application.routes.draw do
  resources :breweries
  devise_for :beer_geeks
  resources :beers
  scope "/notes_for/:beer_geek_name" do
    get '/', to: 'notes#for', as: 'notes_for'
    resources :notes, only: [:show, :edit, :new, :create, :destroy]
  end


  #check what's created by http://localhost:3000/randomstring

  root "beers#index"
end
