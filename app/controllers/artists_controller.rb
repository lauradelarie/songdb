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
    params.require(:song).permit(:title)
  end

end
