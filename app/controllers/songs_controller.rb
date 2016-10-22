class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @artist = Artist.find(song_params[:artist_id])
    @song = @artist.songs.create(song_params)

    if @song.save
      redirect_to @artist, notice: "You added a song!"
    end
  end

private
  def song_params
    params.require(:song).permit(:title, :artist_id)
  end


end
