class EspeciesController < ApplicationController
  before_action :set_especy, only: [:show, :edit, :update, :destroy]

  # GET /especies
  # GET /especies.json
  def index
    @especies = Especie.all
  end

  # GET /especies/1
  # GET /especies/1.json
  def show
    @especie = Especie.find(params[:id])
    reinoID = params[:reino_id]
    @nombreReino = Reino.select(:nombreReino).where("reinos.id = #{@especie.reino_id}").first
    @nombreOrden = Orden.select(:nombreOrden).where("ordens.id = #{@especie.orden_id}").first
    @nombreClase = Clase.select(:nombreClase).where("clases.id = #{@especie.clase_id}").first
    @nombreFamilia = Familium.select(:nombreFamilia).where("familia.id = #{@especie.familium_id}").first
    @top3 = getTop3 @especie.clase_id
  end

  def getTop3(claseID)
    top3 = Especie.select(:nombreComun, :id, :imagen).where("especies.id = #{claseID}").last(3)
    if(top3.size() < 3)
      return Especie.last(3);
    end
    return top3
  end

  # GET /especies/new
  def new
    @especy = Especie.new
  end

  # GET /especies/1/edit
  def edit
  end

  def self.get_graph_data
    return Especie.joins("INNER JOIN reinos on reinos.id = reino_id")
  end


  # POST /especies
  # POST /especies.json
  def create
    @especy = Especie.new(especy_params)
    familiaID = @especy.familium_id
    ordenID = Familium.select(:orden_id).where("familia.id = #{familiaID}").first
    claseID = Orden.select(:clase_id).where("ordens.id = #{ordenID.orden_id}").first
    reinoID = Clase.select(:reino_id).where("clases.id = #{claseID.clase_id}").first

    @especy.orden_id = ordenID.orden_id
    @especy.clase_id = claseID.clase_id
    @especy.reino_id = reinoID.reino_id

    respond_to do |format|
      if @especy.save
        format.html { redirect_to @especy, notice: 'Especie was successfully created.' }
        format.json { render :show, status: :created, location: @especy }
      else
        format.html { render :new }
        format.json { render json: @especy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /especies/1
  # PATCH/PUT /especies/1.json
  def update
    respond_to do |format|
      if @especy.update(especy_params)
        format.html { redirect_to @especy, notice: 'Especie was successfully updated.' }
        format.json { render :show, status: :ok, location: @especy }
      else
        format.html { render :edit }
        format.json { render json: @especy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especies/1
  # DELETE /especies/1.json
  def destroy
    @especy.destroy
    respond_to do |format|
      format.html { redirect_to especies_url, notice: 'Especie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search

    @q = "%#{params[:query]}%"
    @especies = Especie.where("nombreComun LIKE ? or nombreCientifico LIKE ?", @q, @q)
    render 'index'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especy
      @especy = Especie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def especy_params
      params.require(:especie).permit(:nombreComun, :nombreCientifico, :caracteristicas,:familium_id, :orden_id, :clase_id, :reino_id, :imagen, :usos, :estaEnPeligro)
    end
end
