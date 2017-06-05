class V1::TripResult < ApplicationController
  def index
    @trip_results = TripResult.all

    render json: @trip_results, status: :ok
  end

  def create
    @trip_result = TripResult.new (trip_result_params)

    @trip_result.save
    render json: @trip_result, status: :created
  end

  def destroy
    @trip_result = TripResult.where(id: params[:id]).first
  end

    private

    def trip_result_params
      params.require(:trip_result).permit(:trip_result)
    end
end
