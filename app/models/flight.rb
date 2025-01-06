class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'
  has_many :bookings, dependent: :destroy
  
  scope :available_on, ->(date) { where(start_time: date.all_day) }
end
