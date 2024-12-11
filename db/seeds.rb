airports = %w[SFO NYC LAX ORD ATL MIA]
airports.each { |code| Airport.create!(code: code) }

50.times do
  Flight.create!(
    departure_airport: Airport.all.sample,
    arrival_airport: Airport.all.sample,
    start_time: Faker::Time.forward(days: 30, period: :morning),
    duration: rand(60..300)
  )
end
