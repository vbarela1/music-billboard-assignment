class ArtistsController < ApplicationController
 
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all  
  end

  def show
  end

  def new
    @artists = @billboard.artists.new 
  end

  def create
    @artist = Artist.new(artist_params) 
    if @artist.save
      redirect_to billboard_artist_path(@billboard, @artist)
    else
    render :new 
    end
  end 

  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to billboard_artist_path(@billboard, @artist)
    else 
    render :edit 
    end 
  end 

  def destroy
    @artist.destroy
    redirect_to artists_path
  end 

  private 

  def set_artist  
    @artist = Artist.find(params[:id])
  end 

  def artist_params
    params.require(:artist).permit(:name, :album, :billboard_id)
  end 

end
