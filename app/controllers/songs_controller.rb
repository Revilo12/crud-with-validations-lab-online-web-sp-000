class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
  end

  private
  def set_song
    @song = Song.find(params[:id])
  end
end
