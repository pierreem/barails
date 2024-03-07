class TrucsController < ApplicationController
  before_action :set_truc, only: %i[ show edit update destroy ]

  # GET /trucs or /trucs.json
  def index
    @trucs = Truc.all
  end

  # GET /trucs/1 or /trucs/1.json
  def show
  end

  # GET /trucs/new
  def new
    @truc = Truc.new
  end

  # GET /trucs/1/edit
  def edit
  end

  # POST /trucs or /trucs.json
  def create
    @truc = Truc.new(truc_params)

    respond_to do |format|
      if @truc.save
        format.html { redirect_to truc_url(@truc), notice: "Truc was successfully created." }
        format.json { render :show, status: :created, location: @truc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @truc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trucs/1 or /trucs/1.json
  def update
    respond_to do |format|
      if @truc.update(truc_params)
        format.html { redirect_to truc_url(@truc), notice: "Truc was successfully updated." }
        format.json { render :show, status: :ok, location: @truc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @truc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trucs/1 or /trucs/1.json
  def destroy
    @truc.destroy

    respond_to do |format|
      format.html { redirect_to trucs_url, notice: "Truc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truc
      @truc = Truc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def truc_params
      params.require(:truc).permit(:name)
    end
end
