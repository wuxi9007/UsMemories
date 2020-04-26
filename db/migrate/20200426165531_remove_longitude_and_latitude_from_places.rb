class RemoveLongitudeAndLatitudeFromPlaces < ActiveRecord::Migration[5.1]
  def change
    remove_column :places, :longitude
    remove_column :places, :latitude
  end
end
