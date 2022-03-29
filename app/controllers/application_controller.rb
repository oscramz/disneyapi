class ApplicationController < ActionController::API
include JsonWebToken
before_action :authenticate_request

private

def authenticate_request
  header = request.headers['Autorization']
  header = header.split(' ').last if header
  decoded = jwt_decode(header)
  if decoded == "Token not found"
    render json: { error: 'Not authenticated' }, status: :unauthorized
  else
    @current_usuario = Usuario.find(decoded[:usuario_id])
  end
end
end