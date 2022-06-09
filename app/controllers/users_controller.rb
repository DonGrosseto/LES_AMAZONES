class UsersController < ApplicationController

  def upvote
    booking = Booking.find(params[:id])
    if booking.user.rating == nil
      rating = Rating.create
      booking.user.rating = rating
      booking.user.rating.save
    else
      rating = booking.user.rating
    end
    rating.upvote += 1
    rating.save
  end

  def downvote
    booking = Booking.find(params[:id])
    if booking.user.rating == nil
      rating = Rating.create
      booking.user.rating = rating
      booking.user.rating.save
    else
      rating = booking.user.rating
    end
    rating.downvote += 1
    rating.save
  end
end



#  creer un rating_id dès le vote et mettre dans les view si rating_id est nil afficher "non noté"
