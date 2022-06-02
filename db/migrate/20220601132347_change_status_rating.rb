class ChangeStatusRating < ActiveRecord::Migration[6.1]
  def change
    change_column_default :ratings, :status, "Non noté"
  end
end
