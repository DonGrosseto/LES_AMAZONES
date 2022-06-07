class RemoveRatingFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookings, :rating, foreign_key: true
  end
end
