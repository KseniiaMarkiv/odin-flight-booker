class BookingsController < ApplicationController
  before_action :validate_search_params, only: [:new]

  def show
    @booking = Booking.find(params[:id])
    @passengers = params[:passengers].to_i
  end
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new(flight: @flight)
    @passengers = params[:passengers].to_i

    @passengers.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: "Booking successfully created!"
    else
      render :new, alert: "There was an error creating your booking. Please try again."
    end
  end

  private 

  def validate_search_params
    if params[:flight_id].blank? || params[:passengers].blank?
      redirect_to root_path, alert: "Please select a flight and specify the number of passengers before proceeding."
    end
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
