class AlbumController < ApplicationController
  
  def new
    @album = Album.new
  end
  
  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_url(@album)
    else
      render 'new'
    end
  end
  
  def show
  end
  
  def index
    @albums = Album.all
    @band = Band.find(params[:band_id])
    render 'index'
  end
  
  def edit
    @album = Album.find(params[:id])
  end
  
  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      flash[:notice] = "Album updated successfully!"
      redirect_to album_url(@album)
    else
      flash[:notice] = "Could not update album. Please try again"
      render 'edit'
    end
  end
  
  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_url
  end

  private
  def album_params
    params.require(:album).permit(:name, :year, :band_id, :live_or_studio)
  end
end
