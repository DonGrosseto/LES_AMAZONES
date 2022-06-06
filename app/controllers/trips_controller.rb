class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update]
  def index
    if params[:starting_point].present? && params[:ending_point].present?
      @trips = Trip.where(starting_point: params[:starting_point], ending_point: params[:ending_point],date: params[:date])
    else
      @trips = Trip.all
    end
  end

  def show
    @booking = Booking.find_by(trip: @trip, user: current_user )
    @points = {start:[@trip.latitude_start, @trip.longitude_start], end:[@trip.latitude_end, @trip.longitude_end]}
    @markers = @points.map do |point|
      point.flatten!
      {
        lat: point[1],
        lng: point[2]
      }
    end
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    @trip.chatroom = Chatroom.create
    rating = Rating.create
    if @trip.save
      @booking = Booking.create(trip_id: @trip.id, user_id: current_user.id, rating_id: rating.id)
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @trip.update(trip_params)
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render :edit
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:starting_point, :ending_point, :time, :date, :transport)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end
end
