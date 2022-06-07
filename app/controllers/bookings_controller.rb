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

  def show
    @booking = Booking.find(params[:id])
    @trip = @booking.trip
    @points = {start:[@trip.latitude_start, @trip.longitude_start], end:[@trip.latitude_end, @trip.longitude_end]}
    @markers = @points.map do |point|
      point.flatten!
      {
        lat: point[1],
        lng: point[2],
      }
    end
  end

  def index
    @bookings = current_user.bookings.where(trip_id: Trip.where(status: "En cours"))
  end

  def index2
    @bookings = current_user.bookings.where(trip_id: Trip.where(status: "Terminé"))
  end

end
