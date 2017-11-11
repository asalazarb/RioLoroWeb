class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all
    reinosData = ReinosController.get_graph_data
    especiesData = EspeciesController.get_graph_data

    temp = reinosData.uniq
    cantidad = Array.new(temp.size,0)
    enPeligro = Array.new(temp.size, 0)
    categorias = Array.new()

    temp.each do |cat|
      categorias.push(cat.nombreReino)
    end

    (reinosData.zip(especiesData)).each do |reino, especie|
      index = categorias.index(reino.nombreReino)
      cantidad[index] = cantidad[index] + 1
      if especie.estaEnPeligro
        enPeligro[index] = enPeligro[index] + 1
      end
    end
    @chart = ReportesController.prepare_reino_especies_chart categorias, cantidad, enPeligro
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
        redirect_to root_url, notice: "Usuario eliminado."
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    respond_to do |format|
      @user = User.find(params[:id])
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Usuario correctamente actualizado.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Usuario correctamente creado.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def user_params
      params.require(:user).permit(:nombre, :apellido1, :apellido2, :cedula, :nombreUsuario,:email, :password, :image)
    end
end
