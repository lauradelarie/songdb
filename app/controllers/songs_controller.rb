class SongsController < ApplicationController



  def create
    @artist = Artist.find(song_params[:artist_id])
    @song = @artist.songs.create(song_params)
    redirect_to artist_path(@artist), notice: "Song has been created!"
  end


  def song_params
    params.require(:song).permit(:title, :artist_id)
  end

end
