class AuthenticationController < ApplicationController
    before_action :authorize_request, except: :login

    def login
        @user = User.find_by_email(params[:email])
        if @user.present?
            token = JsonWebToken.encode(user_id: @user.id)
            time = Time.now + 72.hours.to_i
            render json: { token: token, exp: time.strftime("%m-%d-%y %H:%M"), username: @user.username }, status: 200
        else
            @user = User.new(user_params)
            if @user.save
                render json: @user, status: :created
            else
                render json: @user.errors, status: :unprocessable_entity
            end
        end
    end


    private

    def user_params
        params.permit(:username, :email, :password, :wallet, :is_admin).required(:email)
    end

    def auth_params
        params.permit(:email, :password)
    end
end
