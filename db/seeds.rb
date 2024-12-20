# Check if the database adapter is PostgreSQL
if ActiveRecord::Base.connection.adapter_name.downcase == 'postgresql'
  # Clear all users and reset the primary key sequence
  Flight.destroy_all
  Airport.destroy_all
  ActiveRecord::Base.connection.reset_pk_sequence!('flights')  # For PostgreSQL
  ActiveRecord::Base.connection.reset_pk_sequence!('airports')  # For PostgreSQL

  puts "PostgreSQL database detected: Cleared all flights, airports and reset primary key sequence."
else
  puts "Non-PostgreSQL database detected: Skipping flights, airports clearance and primary key reset."
end

airports = %w[SFO NYC LAX ORD ATL MIA]
airports.each { |code| Airport.create!(code: code) }

# Create flights with random start times
50.times do
  departure_airport = Airport.all.sample
  arrival_airport = (Airport.all - [departure_airport]).sample
  start_time = Faker::Time.forward(days: 30, period: :morning).in_time_zone('Eastern Time (US & Canada)')

  Flight.create!(
    departure_airport: departure_airport,
    arrival_airport: arrival_airport,
    start_time: start_time,
    duration: rand(1..5)
  )

  puts "Created flight: #{departure_airport.code} -> #{arrival_airport.code}, Start Time: #{start_time}, Duration: #{rand(1..5)} hours"
end

puts "Seeding completed!"
puts "Date & Time now #{DateTime.now()}"
