class UsersController < ApplicationController
    # def index
    #     user_activities = User.find(params[:user_id])
    #     render json: user_activities
    # end

    def create
        user = User.new(user_params)
        user.save!
        render json: {
            jwt: encode_token(id: user.id, username: user.username, email: user.email)
        }
        # if(user.save)
        #     :ok
        # else
        #     :bad_request
        # end
    end

private
    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
