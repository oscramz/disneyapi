class UsuariosController < ApplicationController
  before action :set_usuario, only: [:show, :destroy]

  # get /usuarios
  def index
    @usuarios = Usuario.all
    render json: @usuarios, status: :ok
  end

  # get /usuarios/:id
  def show
    render json: @usuario, status: :ok
  end

  # post /usuarios
  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
        render json: @usuario, status: :created
    else
        render json: @usuario.errors, status: :unprocessable_entity
    end
  end
  
  # delete /usuarios/:id
  def destroy
    @usuario.destroy
    head :no_content
  end

  private

  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

  def usuario_params
    params.require(:usuario).permit(:username, :email, :password, :avatar)
  end

end
