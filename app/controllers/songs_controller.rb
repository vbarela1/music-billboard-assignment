class SongsController < ApplicationController
 
  before_action :set_artist
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = @billboard.artists.songs
  end

  def show
  end

  def new
    @songs = @billboard.artists.songs.new 
  end

  def create
    @songs = @billboard.artists.songs.new(song_params) 
    if @song.save
      redirect_to billboard_song_path(@billboard, @song)
    else
    render :new 
    end
  end 

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to billboard_song_path(@billboard, @song)
    else 
    render :edit 
    end 
  end 

  def destroy
    @song.destroy
    redirect_to artist_path(@artist)
  end 

  private 


  def set_artist  
    @artist = Artist.find(params[:artist_id])
  end 

  def set_song 
    @song = @artist.songs.find(params[:id])
  end 

  def song_params
    params.require(:song).permit(:title, :album, :artist_id)
  end 

end
