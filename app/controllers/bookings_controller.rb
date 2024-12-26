class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @passengers = params[:passengers].to_i
  end

  def create
    # Handle booking creation logic here
    # Example: redirect to a confirmation page
    redirect_to root_path, notice: "Booking successfully created!"
  end
end
