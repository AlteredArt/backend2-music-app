class PlaylistSongsController < ApplicationController
    def index
        @playlist_songs = PlaylistSong.all
        render json: @playlist_songs
    end

    def show
        @playlist_song = PlaylistSong.find(params[:id])
        render json: @playlist_song
    end

    def create 
        @playlist_songs = PlaylistSong.create(
            song_id: params[:song],
            playlist_id: params[:playlist]
        )
        redirect_to 'http://localhost:3001'
    end

end
