class Rating < ApplicationRecord
  has_one :user

  def allvote
    votes = (upvote + downvote)
    result = upvote.to_f / votes * 100
    result.round(2)
  end
end
