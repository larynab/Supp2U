module Api
    module V1
      class UsersController < ApplicationController

        def index
            @users = User.all

            render json: @users
        end

        def create #this will be converted to registration
            @user = User.new(user_params)

            if @user.save
                render json: @user, status: :created
            else
                render json: @user.errors, status: :unprocessable_entity
            end
        end


        private

        def user_params
            params.permit(:username, :email, :wallet)
        end

      end
    end
  end