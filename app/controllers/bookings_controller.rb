class BookingsController < ApplicationController
  before_action :validate_search_params, only: [:new]

  def new
    @flight = Flight.find(params[:flight_id])
    @passengers = params[:passengers].to_i
    @booking = Booking.new
    @passengers.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    redirect_to root_path, notice: "Booking successfully created!" if @booking.save
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
