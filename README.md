# Odin Flight Booker

This application is a Ruby on Rails project for booking flights, created as part of [The Odin Project](https://www.theodinproject.com/) curriculum. It allows users to search for flights based on departure and arrival airports, departure dates, and passenger count.

## Features

- Search for flights based on specified criteria.
- Displays available flights with details such as departure time, duration, and route.
- PostgreSQL database for managing airports and flights.
- Responsive UI with Bootstrap for styling.

## Requirements

- Ruby 3.2+
- Rails 7+
- Bootstrap 5.3.3

## Setup Instructions

Follow these steps to set up and run the application:

### Initial Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/odin-flight-booker.git
   cd odin-flight-booker
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Configure the database by setting environment variables:
   - Add your PostgreSQL username and password in the `config/database.yml` file:
     ```yaml
     default: &default
       adapter: postgresql
       encoding: unicode
       pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
       username: your_pg_username
       password: <%= ENV['DATABASE_PASSWORD'] %>
     ```

4. Create and migrate the database:
   ```bash
   rails db:create
   rails db:migrate
   ```

5. Seed the database:
   ```bash
   rails db:seed
   ```

### Running the App

1. Start the Rails server:
   ```bash
   rails server
   ```

2. Open the application in your browser at [http://localhost:3000](http://localhost:3000).

## Key Implementations

### Models

#### Airport
- `code`: String representing the airport code (e.g., SFO, NYC).
- Associations:
  - `has_many :departing_flights`
  - `has_many :arriving_flights`

#### Flight
- `departure_airport`: References `Airport` (departure).
- `arrival_airport`: References `Airport` (arrival).
- `start_time`: Datetime for the flight's start time.
- `duration`: Integer for flight duration (in hours).
- Associations:
  - `belongs_to :departure_airport`
  - `belongs_to :arrival_airport`

### Controller

#### FlightsController
- Handles the `index` action to:
  - Retrieve all airports.
  - Filter flights based on selected criteria.
  - Populate dropdowns for airports and available dates.

### Views

#### Flight Search Form
Located in `app/views/flights/index.html.erb`, this form includes:
- Dropdowns for selecting departure and arrival airports.
- A date picker for selecting departure date.
- A dropdown for passenger count.

### Styling

- Bootstrap 5.3.3 used for responsive design.
- Custom SCSS configurations for color utilities.
- Bootstrap 5 and Bootstrap icons integrated via CDN.

## Branches

- `screen-one-search`: Implements Screen 1 - Flight Search functionality.
- `screen-two-search`: Implements Screen 2.
- `screen-three-search`: Implements Screen 3.

## Troubleshooting

### Common Errors

- **PostgreSQL Role Issue**: If you encounter errors with PostgreSQL roles, create a role with the following instructions: [Create PostgreSQL Role](https://github.com/KseniiaMarkiv/odin-projects/blob/postgres-check/postgres-app/create_role.md).

-  **SCSS Import Error**:

> [!WARNING]  
Define @import rules at the top of the stylesheet 
An @import rule was ignored because it wasn't defined at the top of the stylesheet. Such rules must appear at the top, before any style declaration and any other at-rule with the exception of @charset and @layer. 

> [!TIP]
> **Solution**:
> Ensure `@import` rules are at the top of your SCSS file. To fix, create a top SCSS file (`app\assets\stylesheets\01_top.scss`) and include external imports there.


## Contributing

Feel free to open issues or submit pull requests for improvements or bug fixes.

## License

This project is licensed under the MIT License.
