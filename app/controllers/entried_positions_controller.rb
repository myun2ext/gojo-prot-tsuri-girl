class EntriedPositionsController < ApplicationController
  before_action :set_entried_position, only: [:show, :edit, :update, :destroy]

  # GET /entried_positions
  # GET /entried_positions.json
  def index
    @entried_positions = EntriedPosition.all
  end

  # GET /entried_positions/1
  # GET /entried_positions/1.json
  def show
  end

  # GET /entried_positions/new
  def new
    @entried_position = EntriedPosition.new
  end

  # GET /entried_positions/1/edit
  def edit
  end

  # POST /entried_positions
  # POST /entried_positions.json
  def create
    @entried_position = EntriedPosition.new(entried_position_params)

    respond_to do |format|
      if @entried_position.save
        format.html { redirect_to @entried_position, notice: 'Entried position was successfully created.' }
        format.json { render action: 'show', status: :created, location: @entried_position }
      else
        format.html { render action: 'new' }
        format.json { render json: @entried_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entried_positions/1
  # PATCH/PUT /entried_positions/1.json
  def update
    respond_to do |format|
      if @entried_position.update(entried_position_params)
        format.html { redirect_to @entried_position, notice: 'Entried position was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @entried_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entried_positions/1
  # DELETE /entried_positions/1.json
  def destroy
    @entried_position.destroy
    respond_to do |format|
      format.html { redirect_to entried_positions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entried_position
      @entried_position = EntriedPosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entried_position_params
      params.require(:entried_position).permit(:entry_id, :latitude, :longitude, :label, :owner_id)
    end
end
