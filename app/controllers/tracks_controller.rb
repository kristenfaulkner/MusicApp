class TrackController < ApplicationController
  
  def new
    @track = Track.new
  end
  
  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to track_url(@track)
    else
      render 'new'
    end
  end
  
  def show
  end
  
  def index
    @tracks = Track.all
    @album = Album.find(params[:album_id])
    render 'index'
  end
  
  def edit
    @track = Track.find(params[:id])
  end
  
  def update
    @track = Track.find(params[:id])
    if @track.update(track_params)
      flash[:notice] = "Track updated successfully!"
      redirect_to track_url(@track)
    else
      flash[:notice] = "Could not update track. Please try again"
      render 'edit'
    end
  end
  
  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to tracks_url
  end

  private
  def track_params
    params.require(:track).permit(:album_id, :name, :bonus_or_regular)
  end
end
