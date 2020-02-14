class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users, include: :playlists
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: :playlists
    end

    def create
        @user = User.create(
            username: params[:username],
            name: params[:name]
        )
        # render json: { user: @user}
        redirect_to "http://localhost:3001/signin.html"
    end

    def destroy
        User.find(params[:id])
        @user.destroy
        # render status: :no_content
        redirect_to "http://localhost:3001"
    end

    def update 
        @user = User.find(params[:id])
        @user.update(
            name: params[:name],
            username: params[:username]
        )
        # render json: @users
        redirect_to "http://localhost:3001"
    end

end
