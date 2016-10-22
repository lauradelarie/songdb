class ArtistsController < ApplicationController

  def index
    # @artists = Artist.search(params[:search])
    @artists = Artist.all
    @songs = Song.all
  end

  def show
    @song = Song.new

    @artist = Artist.find(params[:id])
    @songs = Song.all
  end

  def create
    @artist = Artist.find(song_params[:artist_id])
    @song = @artist.songs.create(song_params)

      if @song.save
        redirect_to artist_songs_path, notice: "You added a song!"
      end
  end


  def by_name
    @artists = Artist.by_name
    render action: :index
  end


  def created_at
    @artists = Artist.created_at
    render action: :index
  end


private

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end

end
