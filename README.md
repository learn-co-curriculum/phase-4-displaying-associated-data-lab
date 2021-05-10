# Displaying Associated Data Lab

## Learning Goals

- Use Active Model associations in the controller
- Render nested JSON data based on model associations

## Introduction

In this lab, we'll be creating an API for a Craigslist-style marketplace where a
user can sell items. We have two models, `User` and `Item`, in a relationship
where a user has many items, and each item belongs to a user.

```txt
User -< Item
```

Get the lab set up by running:

```sh
bundle install
rails db:migrate db:seed
```

## Deliverables

Handle the following requests and return the appropriate JSON data in the response:

```txt
GET /users/:id
```

Example Response:

```json
{
  "id": 1,
  "username": "Dwayne",
  "city": "Los Angeles",
  "items": [
    {
      "id": 1,
      "name": "Non-stick pan",
      "description": "Sticks a bit",
      "price": 10
    }
  ]
}
```

```txt
GET /items
```

Example Response:

```json
{
  "id": 1,
  "name": "Non-stick pan",
  "description": "Sticks a bit",
  "price": 10,
  "user": {
    "id": 1,
    "username": "Dwayne",
    "city": "Los Angeles"
  }
}
```
