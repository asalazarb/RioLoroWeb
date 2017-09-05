class ReinosController < ApplicationController
  before_action :set_reino, only: [:show, :edit, :update, :destroy]

  # GET /reinos
  # GET /reinos.json
  def index
    @reinos = Reino.all
  end

  # GET /reinos/1
  # GET /reinos/1.json
  def show
  end

  # GET /reinos/new
  def new
    @reino = Reino.new
  end

  # GET /reinos/1/edit
  def edit
  end

  # POST /reinos
  # POST /reinos.json
  def create
    @reino = Reino.new(reino_params)

    respond_to do |format|
      if @reino.save
        format.html { redirect_to @reino, notice: 'Reino was successfully created.' }
        format.json { render :show, status: :created, location: @reino }
      else
        format.html { render :new }
        format.json { render json: @reino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reinos/1
  # PATCH/PUT /reinos/1.json
  def update
    respond_to do |format|
      if @reino.update(reino_params)
        format.html { redirect_to @reino, notice: 'Reino was successfully updated.' }
        format.json { render :show, status: :ok, location: @reino }
      else
        format.html { render :edit }
        format.json { render json: @reino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reinos/1
  # DELETE /reinos/1.json
  def destroy
    @reino.destroy
    respond_to do |format|
      format.html { redirect_to reinos_url, notice: 'Reino was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reino
      @reino = Reino.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reino_params
      params.require(:reino).permit(:nombreReino)
    end
end
