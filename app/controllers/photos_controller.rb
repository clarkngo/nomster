class PhotosController < ApplicationController


  def create
    @place = Place.find(params[:place_id])
    @photo = @place.photos.create(photo_params)
    if @photo.valid?
      redirect_to place_path(@place)
  end

  private

  def photo_params
      params.require(:photo).permit(:caption, :picture)
  end

end
