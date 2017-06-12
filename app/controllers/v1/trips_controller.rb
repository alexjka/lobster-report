class V1::TripsController < ApplicationController
  def index
    @trips = Trip.all

    render json: @trips, status: :ok
  end

  def show
    @trip = Trip.find(params[:id])

    render json: @trip
  end

  def create
    @trip = Trip.new (trip_params)

    @trip.save
    render json: @trip, status: :created
  end

  def destroy
    @trip = Trip.where(id: params[:id]).first
  end

    private

    def trip_params
      params.require(:trip).permit(:result, :date)
    end
end
