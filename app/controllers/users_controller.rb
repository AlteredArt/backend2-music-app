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
            name: params[:id],
            username: params[:id]
        )
        redirect_to 'http://localhost:3001'
    end
end
