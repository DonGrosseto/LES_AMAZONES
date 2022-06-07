class UsersController < ApplicationController

  def upvote
    rating = Rating.find(params[:id])
    rating.upvote += 1
    rating.save
  end

  def downvote
    rating = Rating.find(params[:id])
    rating.downvote += 1
    rating.save
  end

end
