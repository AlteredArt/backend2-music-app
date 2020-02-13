class PlaylistsController < ApplicationController
    def index
        @playlists = Playlist.all
        render json: @playlists, include: :songs
    end
    
    def show
        @playlist = Playlist.find(params[:id])
        render json: @playlist, include: :songs
    end

    def create
        @playlist = Playlist.create(
            name: params[:name],
            user_id: params[:user]
        )
        render status: :accepted
        # redirect_to "http://localhost:3001/showusers.html?id=#{params[:id]}"
    end

    def destroy
        Playlist.find(params[:id])
        @playlist.destroy
        redirect_to "http://localhost:3001/showplaylist.html?id=#{params[:id]}"
    end

    def update 
        @playlist = Playlist.find(params[:id])
        @playlist.update(
            name: params[:name]
        )
        redirect_to "http://localhost:3001/showplaylist.html?id=#{params[:id]}"
    end
end
