class TokensController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      render json: {
        jwt: encode_token({id: user.id, username: user.username, email: user.email})
      }
    else
      head :not_found
    end
  end

end
