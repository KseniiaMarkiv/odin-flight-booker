class BookingsController < ApplicationController
  before_action :validate_search_params, only: [:new]

  def new
    @flight = Flight.find(params[:flight_id])
    @passengers = params[:passengers].to_i
  end

  def create
    redirect_to root_path, notice: "Booking successfully created!"
  end

  private 

  def validate_search_params
    if params[:flight_id].blank? || params[:passengers].blank?
      redirect_to root_path, alert: "Please select a flight and specify the number of passengers before proceeding."
    end
  end
end
