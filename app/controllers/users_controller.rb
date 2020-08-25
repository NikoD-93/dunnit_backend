class UsersController < ApplicationController



    def index 
        users = User.all
        render json: users
    end 

    def create 
        puts "========="
        puts params 
        user = User.find_or_create_by(username: params[:username])
        render json: user 
    end 

    def destroy
        post = User.find(params[:id])
        post.destroy
        render json: {message: "Success"}
    end

    def show 
        user = User.find(params[:id])
        render json: user
    end 

    private

    def user_params
        params.require(:user).permit(:username)
    end
end 