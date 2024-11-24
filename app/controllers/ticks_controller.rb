class TicksController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @tick = @place.ticks.new(tick_params)
    if @tick.save
      redirect_to @place, notice: "Ticks updated!"
    else
      render "places/show"
    end
  end

  private

  def tick_params
    params.require(:tick).permit(
      :drinking_water,
      :trash_bins,
      :bag_dispensers,
      :water_play_areas,
      :small_large_areas,
      :fenced_areas,
      :shade_rest_areas,
      :open_spaces,
      :low_noise,
      :safe_paths,
      :no_dog_zones,
      :dog_friendly_businesses,
      :toilet_facilities,
      :playdate_opportunities
    )
  end

end
