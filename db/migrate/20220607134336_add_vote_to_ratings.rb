class AddVoteToRatings < ActiveRecord::Migration[6.1]
  def change
    remove_column :ratings, :status
    add_column :ratings, :upvote, :integer
    add_column :ratings, :downvote, :integer
  end
end
