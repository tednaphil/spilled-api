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


## Endpoints
| Method | Endpoint | Request Body | Sample Response |
--- | --- | --- | ---
`GET` | `/teas` | n/a | `[{id: 1, name: "Assam Tea", slug: "assam", style: "black",...}, ...]`
`GET` | `/teas/:id` | n/a | `{id: 1, name: "Assam Tea", slug: "assam", style: "black",...}`
`GET` | `/user_favs/:id` | n/a | `{id: 1, name: "Assam Tea", slug: "assam", style: "black",...}`
`POST` | `/user_favs/` | `{fav: {user_id: 1, tea_id: 5}}` | `{id: 2, user_id: 1, tea_id: 5}`

