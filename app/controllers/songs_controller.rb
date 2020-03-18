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

  def edit
    set_song
  end

  def update
    set_song
    @song.update(params.require(song))

  def create

  end

  private
  def set_song
    @song = Song.find(params[:id])
  end

  def set_params
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end
end
