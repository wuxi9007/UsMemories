class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update]

  def new
  	@place = Place.new
    @place.images.build
  end

  def index
    @places = Place.all
  end

  def show
  end

  def blog
  end

  def edit
    @place.images.build
  end

  def create
    @place = Place.new(place_params)
    respond_to do |format|
      @place.images.each do |i|
        i.drive_url = i.drive_url.split("/open?id=")[1]
      end
      if @place.save
        format.html {
          redirect_to places_url(notice: 'Place was successfully created.')
        }
      else
        format.html { redirect_to new_place_path }
      end
    end
  end

  def update
  	respond_to do |format|
      if @place.update(place_params)
        @place.images.each do |i|
          i.drive_url = i.drive_url.split("/open?id=")[-1]
        end
        format.html { redirect_to place_path(notice: 'Place successfully updated.') }
      else
        format.html { render :edit }
      end
    end
  end

  private

  def set_place
  	@place = Place.find(params[:id])
  end

  def place_params
  	params.require(:place).permit(:name, :geo, images_attributes: Image.attribute_names.map(&:to_sym).push(:_destroy))
  end
end
