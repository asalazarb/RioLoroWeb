class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all
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
