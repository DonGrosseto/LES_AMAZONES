class AddRatingToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :rating, foreign_key: true
  end
end
