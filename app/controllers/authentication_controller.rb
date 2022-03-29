class AuthenticationController < ApplicationController

  skip_before_action :authenticate_request, only: [:login]

  # post /auth/login
  def login
    @usuario = Usuario.find_by_email(params[:email])
    if @usuario&.authenticate(params[:password])
      token = jwt_encode(usuario_id: @usuario.id)
      render json: {token: token}, status: :ok
    else
      render json: {error: 'Usuario o contraseña invalidos'}, status: :unauthorized
    end
  end
end