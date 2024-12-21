# Odin Flight Booker

## Description
The Odin Flight Booker app is a Ruby on Rails project that simulates a flight booking system. It is designed to fulfill the requirements outlined in [The Odin Project's Flight Booker lesson](https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker). The app includes features for searching flights, selecting flights, and booking flights.

## Features
1. **Search Flights (Screen 1)**
   - Users can search for flights by selecting a departure airport, arrival airport, date, and the number of passengers.
   - Available flights are displayed based on the search criteria.

2. **Flight Selection (Screen 2)**
   - Users can choose a flight from the available options.

3. **Booking Confirmation (Screen 3)**
   - Users can enter passenger details and confirm their booking.

## Branches
- **`screen-one-search`**: Implements the functionality for Screen 1 (Search Flights).
- **`screen-two-search`**: Implements the functionality for Screen 2 (Flight Selection).
- **`screen-three-search`**: Implements the functionality for Screen 3 (Booking Confirmation).

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/KseniiaMarkiv/odin-flight-booker.git
   cd odin-flight-booker
   ```
2. Install dependencies:
   ```bash
   bundle install
   ```
3. Set up the database:
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```
4. Start the Rails server:
   ```bash
   rails server
   ```
5. Visit the app in your browser at `http://localhost:3000`.

## Dependencies
- Ruby on Rails
- PostgreSQL
- Bootstrap 5
- Faker (for seed data)

## Notes
Ensure you configure your `config/database.yml` with the appropriate PostgreSQL credentials. Additionally, set environment variables for sensitive data such as database passwords.

## License
This project is open-source and available under the [MIT License](LICENSE).
