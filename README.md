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

```console
$ bundle install
$ rails db:migrate db:seed
```

There is seed data in place so you can test your solution out in the browser or
in Postman. You can also run `learn test` to run the tests.

## Deliverables

Handle the following requests and return the appropriate JSON data in the response:

### Users Show Route

```txt
GET /users/:id

Response Body
-------
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

### Items Index Route

```txt
GET /items

Response Body
-------
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

## Resources

- [Serialization: as_json][serialization]

[serialization]: https://api.rubyonrails.org/classes/ActiveModel/Serializers/JSON.html#method-i-as_json
