class UsersController < ApplicationController

  def upvote
    self.rating.upvote += 1
  end

  def downvote
    self.rating.downvote += 1
  end

  def allvote
    votes = self.rating.upvote + self.rating.downvote
    self.rating.upvote / votes * 100
  end

end
