class PagesController < ApplicationController
  def home
    @trips = Trip.where(starting_point: current_user.address)
  end

  def user
    @user = current_user
  end
end
