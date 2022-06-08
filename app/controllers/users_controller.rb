class UsersController < ApplicationController

  def upvote
    raise
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



# creer un rating_id dès le vote et mettre dans les view si rating_id est nil afficher "non noté"
