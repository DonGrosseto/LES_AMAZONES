class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update]
  def index
    @trips = Trip.all
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    @trip.chatroom = Chatroom.create
    if @trip.save
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
