class NotesController < ApplicationController
  before_action :authenticate_beer_geek!

  def for
    @beer_geek = BeerGeek.find_by(name: params[:beer_geek_name])
    if @beer_geek
      @notes = Note.where(beer_geek: @beer_geek)
    else
      render :no_beer_geek
    end
  end
end
