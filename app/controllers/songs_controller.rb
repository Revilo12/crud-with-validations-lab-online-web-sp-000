class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    set_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(set_params)
    if @song.valid?
      @song.save
      song_redirect
    else
      render :new
    end
  end

  def edit
    set_song
  end

  def update
    set_song
    @song.update(set_params)
    if @song.valid?
      song_redirect
    else
      render :edit
    end
  end

  private
  def set_song
    @song = Song.find(params[:id])
  end

  def set_params
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end

  def song_redirect
    redirect_to song_path(@song)
  end
end
