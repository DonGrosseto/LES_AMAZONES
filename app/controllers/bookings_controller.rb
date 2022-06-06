class BookingsController < ApplicationController

  def create
    @booking = Booking.new
    @booking.trip = Trip.find(params[:trip_id])
    @booking.user = current_user
    @booking.rating = Rating.new
    @booking.save
    redirect_to trip_path(params[:trip_id])
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to trip_path(@trip)
  end

  def index
    @bookings = current_user.bookings.where(trip_id: Trip.where(status: "En cours"))
  end

  def index2
    @bookings = current_user.bookings.where(trip_id: Trip.where(status: "Terminé"))
  end

end
