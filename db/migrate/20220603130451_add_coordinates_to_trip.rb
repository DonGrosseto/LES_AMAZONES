class AddCoordinatesToTrip < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :latitude_start, :float
    add_column :trips, :longitude_start, :float
    add_column :trips, :latitude_end, :float
    add_column :trips, :longitude_end, :float
  end
end
