class PagesController < ApplicationController
  def home
    @trips = Trip.where(starting_point: current_user.address)
  end
end
