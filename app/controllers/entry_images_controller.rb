class EntryImagesController < ApplicationController
  before_action :set_entry_image, only: [:show, :edit, :update, :destroy]

  # GET /entry_images
  # GET /entry_images.json
  def index
    @entry_images = EntryImage.all
  end

  # GET /entry_images/1
  # GET /entry_images/1.json
  def show
  end

  # GET /entry_images/new
  def new
    @entry_image = EntryImage.new
  end

  # GET /entry_images/1/edit
  def edit
  end

  # POST /entry_images
  # POST /entry_images.json
  def create
    @entry_image = EntryImage.new(entry_image_params)

    respond_to do |format|
      if @entry_image.save
        format.html { redirect_to @entry_image, notice: 'Entry image was successfully created.' }
        format.json { render action: 'show', status: :created, location: @entry_image }
      else
        format.html { render action: 'new' }
        format.json { render json: @entry_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entry_images/1
  # PATCH/PUT /entry_images/1.json
  def update
    respond_to do |format|
      if @entry_image.update(entry_image_params)
        format.html { redirect_to @entry_image, notice: 'Entry image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @entry_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_images/1
  # DELETE /entry_images/1.json
  def destroy
    @entry_image.destroy
    respond_to do |format|
      format.html { redirect_to entry_images_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_image
      @entry_image = EntryImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_image_params
      params.require(:entry_image).permit(:entry_id, :text)
    end
end
