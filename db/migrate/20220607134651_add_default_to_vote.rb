class AddDefaultToVote < ActiveRecord::Migration[6.1]
  def change
    change_column_default :ratings, :upvote, 0
    change_column_default :ratings, :downvote, 0
  end
end
