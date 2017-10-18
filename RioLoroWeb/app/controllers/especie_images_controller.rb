class EspecieImagesController < ApplicationController
  before_action :set_especie_image, only: [:show, :edit, :update, :destroy]

  # GET /especie_images
  # GET /especie_images.json
  def index
    @especie_images = EspecieImage.all
  end

  # GET /especie_images/1
  # GET /especie_images/1.json
  def show
  end

  # GET /especie_images/new
  def new
    @especie_image = EspecieImage.new
  end

  # GET /especie_images/1/edit
  def edit
  end

  # POST /especie_images
  # POST /especie_images.json
  def create
    @especie_image = EspecieImage.new(especie_image_params)

    respond_to do |format|
      if @especie_image.save
        format.html { redirect_to @especie_image, notice: 'Especie image was successfully created.' }
        format.json { render :show, status: :created, location: @especie_image }
      else
        format.html { render :new }
        format.json { render json: @especie_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /especie_images/1
  # PATCH/PUT /especie_images/1.json
  def update
    respond_to do |format|
      if @especie_image.update(especie_image_params)
        format.html { redirect_to @especie_image, notice: 'Especie image was successfully updated.' }
        format.json { render :show, status: :ok, location: @especie_image }
      else
        format.html { render :edit }
        format.json { render json: @especie_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especie_images/1
  # DELETE /especie_images/1.json
  def destroy
    @especie_image.destroy
    respond_to do |format|
      format.html { redirect_to especie_images_url, notice: 'Especie image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especie_image
      @especie_image = EspecieImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def especie_image_params
      params.fetch(:especie_image, {})
    end
end
