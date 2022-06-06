class ChangeDefaultLongitude < ActiveRecord::Migration[6.1]
  def change
    change_column_default :trips, :longitude_start, 0.2
  end
end
