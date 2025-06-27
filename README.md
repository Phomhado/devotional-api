# Devotional API

A simple Ruby on Rails API for managing daily devotionals. Each devotional contains a title, a Bible verse, and a message. The API supports full CRUD operations and can return today's devotional.

## Features
- Create, read, update, and delete devotionals
- Retrieve all devotionals or a single devotional by ID
- Get today's devotional by date

## Requirements
- Ruby 3.3.0
- Rails ~> 7.1.3
- SQLite3 (default, can be changed)

## Setup

1. **Clone the repository:**
   ```bash
   git clone git@github.com:Phomhado/devotional-api.git
   cd devotional-api
   ```
2. **Install dependencies:**
   ```bash
   bundle install
   ```
3. **Set up the database:**
   ```bash
   bin/rails db:create db:migrate
   ```
4. **Run the server:**
   ```bash
   bin/rails server
   ```
   The API will be available at `http://localhost:3000`.

## API Endpoints

All endpoints are prefixed with `/api/v1`.

### List all devotionals
- **GET** `/api/v1/devotionals`

### Get a single devotional
- **GET** `/api/v1/devotionals/:id`

### Create a devotional
- **POST** `/api/v1/devotionals`
- **Body:**
  ```json
  {
    "devotional": {
      "title": "Your Title",
      "verse": "John 3:16",
      "body": "Your message here.",
      "date": "2025-06-27"
    }
  }
  ```

### Update a devotional
- **PUT/PATCH** `/api/v1/devotionals/:id`
- **Body:** (same as create)

### Delete a devotional
- **DELETE** `/api/v1/devotionals/:id`

### Get today's devotional
- **GET** `/api/v1/devotionals/today`

## Example Response
```json
{
  "id": 1,
  "title": "Morning Hope",
  "verse": "Psalm 23:1",
  "body": "The Lord is my shepherd; I shall not want.",
  "date": "2025-06-27",
  "created_at": "2025-06-27T01:12:07.000Z",
  "updated_at": "2025-06-27T01:12:07.000Z"
}
```

## Notes
- No authentication is required by default.
- CORS is enabled for API usage.
- Database: SQLite3 (see `config/database.yml` to change)
- Future updates and tests will be added

