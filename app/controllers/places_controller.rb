class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update]

  def new
  	@place = Place.new
    @place.tasks.build
  end

  def index
    @places = Place.all
  end

  def show
  end

  def edit
    @place.images.build
  end

  def create
    @place = Place.new(place_params)
    respond_to do |format|
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
  	params.require(:place).permit(:name, :longitude, :latitude, images_attributes: Image.attribute_names.map(&:to_sym).push(:_destroy))
  end
end
