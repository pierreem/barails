class NotesController < ApplicationController
  before_action :set_beer_geek
  before_action :set_note, only: [ :show, :destroy ]
  before_action :authenticate_beer_geek!, except: [:for]
  before_action :beer_geek_edit_access!, except: [:for, :show]

  def for
    @notes = Note.where(beer_geek: @beer_geek)
  end

  def new
    unless params[:note].nil? or params[:note][:beer_id].nil?
      @note = Note.new(beer_id: params[:note][:beer_id].to_i)
      if @note.beer
        render :new_with_beer
      else
        render :new, notice: t("notes.beer_invalid")
      end
    end
  end

  def create
    @note = Note.new(note_params.merge(beer_geek_id: current_beer_geek.id))

    respond_to do |format|
      if @note.save
        format.html { render :new_after_create }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new_with_beer }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def destroy
    @beer_name = @note.beer.name
    @note_id = @note.id
    @note.destroy if current_beer_geek == @note.beer_geek

    respond_to do |format|
      format.html { render :deleted }
      format.json { head :no_content }
    end
  end

  private
    def set_beer_geek
      @beer_geek = BeerGeek.find_by(name: params[:beer_geek_name])
      render :no_beer_geek unless @beer_geek
    end

    def beer_geek_edit_access!
      head :unauthorized if @beer_geek != current_beer_geek
    end

    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:value, :beer_id)
    end
end
