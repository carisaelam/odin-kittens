# Odin Kittens API

## Overview

Odin Kittens is a simple Rails application that serves as both a traditional HTML web app and a JSON API. The project focuses on building a basic, vanilla RESTful resource, and transitioning it into a data-producing API. This exercise is intended to provide a straightforward experience in setting up Rails as an API provider without relying on external APIs.

## Features

- **HTML Web App**: The application includes a web interface where you can perform all standard CRUD (Create, Read, Update, Delete) operations on Kitten records.
- **JSON API**: The app also exposes a RESTful API that allows external clients to retrieve data in JSON format.

## Getting Started

### Prerequisites

- Ruby on Rails installed on your local machine.
- Basic understanding of Rails and RESTful routes.

### Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/odin-kittens.git
   cd odin-kittens
   ```

2. Install the necessary gems:

   ```bash
   bundle install
   ```

3. Set up the database:

   ```bash
   rails db:create db:migrate
   ```

4. Run the server:
   ```bash
   rails server
   ```

### Usage

#### HTML Web App

- Navigate to `http://localhost:3000/kittens` to view the list of all kittens.
- Perform CRUD operations:
  - **Create**: Add a new kitten via the form at `/kittens/new`.
  - **Read**: View details of a single kitten at `/kittens/:id`.
  - **Update**: Edit an existing kitten at `/kittens/:id/edit`.
  - **Delete**: Remove a kitten using the delete link provided in the show or index views.

#### JSON API

- Access the list of kittens in JSON format by sending a `GET` request to `/kittens` with the `accept: :json` header.
- View a single kitten's details by sending a `GET` request to `/kittens/:id` with the `accept: :json` header.

### Example JSON Requests

1. Open IRB and require `rest-client`:

   ```ruby
   require 'rest-client'
   ```

2. Fetch all kittens:

   ```ruby
   response = RestClient.get("http://localhost:3000/kittens", accept: :json)
   puts response.body
   ```

3. Fetch a single kitten by ID:
   ```ruby
   response = RestClient.get("http://localhost:3000/kittens/1", accept: :json)
   puts response.body
   ```

## Flash Messages

The application provides feedback via flash messages after creating, updating, or deleting a kitten. These messages appear on the relevant HTML pages, offering user-friendly confirmation or error alerts.

## Acknowledgements

This project is part of [The Odin Project's Rails course](https://www.theodinproject.com/lessons/ruby-on-rails-kittens-api). Special thanks to The Odin Project community for the guidance and support.
