module Api
class AuthenticationController < ApplicationController

  skip_before_action :authenticate_request
  def authenticate
    command = AuthenticateUser.call(params[:email], params[:password])


    if command.success?
      render json: { auth_token: command.result[0], id: command.result[1], name: command.result[2], email: command.result[3], usertype_id: command.result[4]}
    else
      render json: {}, status: :unauthorized
    end
  end


end
end