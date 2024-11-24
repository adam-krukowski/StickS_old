class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
    @tick = @place.ticks.new
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.user = current_user
    if @place.save
      redirect_to @place, notice: "Place added successfully!"
    else
      render :new
    end
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :latitude, :longitude)
  end
end
