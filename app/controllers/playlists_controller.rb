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
        redirect_to "http://localhost/3001"
    end
end
