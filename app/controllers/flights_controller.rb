class FlightsController < ApplicationController
  def index
    @available_dates = Flight.select(:start_time).distinct.pluck(:start_time).map(&:to_date)
    @selected_date = params[:date] ? params[:date].to_date : nil
    @flights = @selected_date ? Flight.available_on(@selected_date) : Flight.all

    @airports = Airport.all
  end
end
