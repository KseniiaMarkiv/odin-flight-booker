class FlightsController < ApplicationController
  def index
    # Retrieve all airports for the dropdowns
    @airports = Airport.all

    # Filter flights based on selected parameters
    @departure_airport_id = params[:departure_airport_id]
    @arrival_airport_id = params[:arrival_airport_id]
    @selected_date = params[:date].present? ? params[:date].to_datetime : nil

    @flights = Flight.all

    # Apply filters if parameters are present
    @flights = @flights.where(departure_airport_id: @departure_airport_id) if @departure_airport_id.present?
    @flights = @flights.where(arrival_airport_id: @arrival_airport_id) if @arrival_airport_id.present?
    @flights = @flights.available_on(@selected_date) if @selected_date.present?

    # For the date picker min/max values
    @available_dates = Flight.select(:start_time).distinct.pluck(:start_time).map(&:to_datetime)
  end
end

