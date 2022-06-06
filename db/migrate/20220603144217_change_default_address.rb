class ChangeDefaultAddress < ActiveRecord::Migration[6.1]
  def change
    change_column_default :trips, :latitude_start, 0.2
    change_column_default :trips, :latitude_start, 0.2
    change_column_default :trips, :latitude_end, 0.2
    change_column_default :trips, :longitude_end, 0.2
  end
end
