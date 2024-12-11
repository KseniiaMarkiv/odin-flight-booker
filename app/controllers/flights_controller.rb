class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @dates = Flight.pluck(:start_time).map { |time| time.to_date }.uniq
  end
end
