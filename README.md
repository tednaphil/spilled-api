# README

<!--This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database initialization

* How to run the test suite-->

Deployed API Link `https://spilled-api.onrender.com`

## Schema

<img width="500" alt="Screenshot 2024-07-14 at 11 22 34 PM" src="https://github.com/user-attachments/assets/45173c46-4841-4d91-880c-4aa23ef303b1">

## Endpoints
| Method | Endpoint | Request Body | Sample Response |
--- | --- | --- | ---
`GET` | `/teas` | n/a | `[{id: 1, name: "Assam Tea", slug: "assam", style: "black",...}, ...]`
`GET` | `/teas/:id` | n/a | `{id: 1, name: "Assam Tea", slug: "assam", style: "black",...}`

