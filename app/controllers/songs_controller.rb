class SongsController < ApplicationController
  before_action :set_song, only: [:show, :update, :destroy]

  # GET /todos
  # GET /todos.json
  def index
    @song = Song.new
    @song = Song.all

    if params[:q].present?
      @songs = @songs.where('title ILIKE ?', "%#{params[:q]}%")
    end

    @songs = @songs.order(:id)
  end

  def show
  end

  # POST /todos
  # POST /todos.json
  def create
    @song = Song.new(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to songs_path, notice: 'Song was successfully created.' }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render :index }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todos/1
  # PATCH/PUT /todos/1.json
  def update
    respond_to do |format|
      if @song.update(song_params)
        format.html { redirect_to @song, notice: 'Song was successfully updated.' }
        format.json { render :show, status: :ok, location: @song }
      else
        format.html { render :index }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy
    @song.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:title, :completed)
    end

end
