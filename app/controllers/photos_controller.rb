class PhotosController < ApplicationController
   before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    #raise photo_params.merge(user: current_user).to_s
    @place.photos.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
  end
  
  private

  def photo_params
    params.require(:photo).permit(:picture, :caption)
  end

end
