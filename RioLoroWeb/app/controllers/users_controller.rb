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
end
