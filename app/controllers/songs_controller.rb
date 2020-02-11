class SongsController < ApplicationController
    def index
        @songs = Song.all
        render json: @songs, include: :playlist
    end

    def show
        @song = Song.find(params[:id])
        render json: @song, include: :playlist
    end

    def create
        @song = Song.create(
            title: params[:title],
            artist: params[:artist],
            album: params[:album],
            duration: params[:duration]
        )
        redirect_to "http://localhost/3001"
    end
end
