# Odin Flight Booker
FLIGHT SEARCH FORM ON RUBY ON RAILS 

## Description
> [!NOTE]  
> Challenge yourself 👍 just try to perform this project
> 
> [![](https://img.shields.io/badge/link-yellow?style=for-the-badge)](https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker) 

_This is a simple project that is able to represent the Developer’s ability to implement and understand the MVC model, Active Record Associations, Assets Pipeline usage, validations and flash messages, forms, and routes._

The Odin Flight Booker app is a Ruby on Rails project that simulates a flight booking system. It fulfills the requirements outlined in [The Odin Project's Flight Booker lesson](https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker). The app includes features for searching flights, selecting flights, and booking flights.

This project demonstrates the Developer’s ability to implement and understand:
- The MVC model
- Active Record Associations
- Asset Pipeline usage
- Validations and flash messages
- Forms and routes

_It also includes flexible search functionality, allowing users to search for flights based on partial input (e.g., only selecting a departure or arrival airport, or just a date and you will see all flights on specified date). The app also features a form reset option and then you just click on display flight and redirect to fill in the remaining information._

## Table of Contents

- [Search Flights (Screen 1)](#search-flights-screen-1)
- [Flight Selection (Screen 2)](#flight-selection-screen-2)
- [Booking Confirmation (Screen 3)](#booking-confirmation-screen-3)
- [Technology and Techniques Used](#technology-and-techniques-used)
- [Installation](#installation)
> [!CAUTION]
> if get error click [ERROR](#error)

## Features
### **Search Flights (Screen 1)**
- Users can `search for flights` by selecting:
  - Departure airport
  - Arrival airport
  - Departure date
  - Number of passengers
- `Flexible search` options allow users to view flights by entering partial criteria (e.g., just a departure airport or date etc..).
- `Matching flights` are displayed below the search form, showing:
  - Departure and arrival airports
  - Start time
  - Duration
- Includes a `Reset Form` option for clearing the search fields.
- Users can select a flight from the search results by clicking on the preferred flight.

### **Flight Selection (Screen 2)**
- Users are redirected to a page where they can:
  - Passenger Information Entry.

### **Booking Confirmation (Screen 3)**
- Once passenger details are entered and the flight is selected, users can:
  - Booking Confirmation: redirect to home page and show message about Booking was successfully created.

## Technology and Techniques Used
- **Ruby on Rails**: Versions 3.2.2 and 7.1.5
- **PostgreSQL**: Database for storing flight and booking data.
- **Bootstrap v5.3.3**: For responsive design and styling.
- **Faker gem**: for seed data.
- **Active Record Associations**: Model relationships for managing data.
- **Nested Attributes**: Used with Form Helpers to handle complex forms.
- **Validations**: Ensured data was entered.
- **Flash Messages**: Displayed success and error messages to users.

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

## ERROR:
- **Ensure PostgreSQL is installed and running on your system**

  If you encounter the error `'psql' is not recognized as an internal or external command, operable program or batch file,` follow by [link](https://github.com/KseniiaMarkiv/odin-projects/blob/postgres-check/postgres-app/psql_error.md)

- **Set up a PostgreSQL role (user) with a password**
  
  steps in [link](https://github.com/KseniiaMarkiv/odin-projects/blob/postgres-check/postgres-app/create_role.md)

## Dependencies
- **Ruby on Rails**  
- **PostgreSQL**  
- **Bootstrap 5**  
- **Faker**: Used for seed data.

## Notes
- Ensure you configure your `config/database.yml` with the appropriate PostgreSQL credentials.
- Set environment variables for sensitive data such as database passwords.

## Links
- Project assignment on The Odin Project: [Flight Booker Lesson](https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker)

## License
This project is open-source and available under the [MIT License](LICENSE).

