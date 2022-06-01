class BookingsController < ApplicationController

  def create
    @booking = Booking.new
    @booking.trip = Trip.find(params[:id])
    @booking.user = current_user
    @booking.rating = Rating.new
    @booking.save
  end

  def destroy
    @trip = Trip.find(params[:id])
    @booking = Booking.where(:trip_id == @trip)
    @booking.destroy
    redirect_to trip_path(@trip)
  end

  def index1
    @bookings = current_user.bookings.trip.where(:status == "En cours")
  end

end
