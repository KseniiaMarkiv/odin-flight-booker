class FlightsController < ApplicationController 
  def index 

    # Retrieve all airports for the dropdowns 
    @airports = Airport.all 

    # Use codes instead of IDs for cleaner URLs 
    @departure_code = params[:departure_code] 
    @arrival_code = params[:arrival_code] 
    @selected_date = params[:date].present? ? params[:date].to_date : nil 
    @passengers = params[:passengers] 

    # Find the airport IDs based on the codes 
    departure_airport = Airport.find_by(code: @departure_code) if @departure_code.present?
    arrival_airport = Airport.find_by(code: @arrival_code) if @arrival_code.present?

    @flights = Flight.all  

    # Filter flights based on the selected parameters 
    @flights = @flights.where(departure_airport_id: departure_airport.id) if departure_airport.present? 
    @flights = @flights.where(arrival_airport_id: arrival_airport.id) if arrival_airport.present? 
    @flights = @flights.available_on(@selected_date) if @selected_date.present? 

    # For the date picker min/max values 
    @available_dates = Flight.select(:start_time).distinct.pluck(:start_time).map(&:to_datetime) 
  end 

  def reset
    flash[:notice] = "The reset was successful"
    redirect_to root_path
  end

end 