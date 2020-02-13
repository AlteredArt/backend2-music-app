class SongsController < ApplicationController
    def index
        @songs = Song.all
        render json: @songs, include: :playlists
    end

    def show
        @song = Song.find(params[:id])
        render json: @song, include: :playlists
    end

    def create
        @song = Song.create(
            track_id: params[:track_id]
        )
        redirect_to "http://localhost:3001/showuser.html?id=${id}"
    end


end
