class CreateTicks < ActiveRecord::Migration[7.1]
  def change
    create_table :ticks do |t|
      t.references :place, null: false, foreign_key: true
      t.boolean :drinking_water
      t.boolean :trash_bins
      t.boolean :bag_dispensers
      t.boolean :water_play_areas
      t.boolean :small_large_areas
      t.boolean :fenced_areas
      t.boolean :shade_rest_areas
      t.boolean :open_spaces
      t.boolean :low_noise
      t.boolean :safe_paths
      t.boolean :no_dog_zones
      t.boolean :dog_friendly_businesses
      t.boolean :toilet_facilities
      t.boolean :playdate_opportunities

      t.timestamps
    end
  end
end
