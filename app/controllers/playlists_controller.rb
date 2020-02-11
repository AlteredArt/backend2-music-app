class PlaylistsController < ApplicationController
    def index
        @playlists = Playlist.all
        render json: @playlists, include: :song
    end

    def show
        @playlist = Playlist.find(params[:id])
        render json: @playlist, include: :song
    end

    def create
        @playlist = Playlist.create(
            name: params[:name],
            user_id: params[:user]
        )
        redirect_to "http://localhost/3001"
    end
end
