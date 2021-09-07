# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
![](https://img.shields.io/badge/Microverse-blueviolet)

# Movie API

> API that catalogues movie information and allows for the selection of favourites.

![screenshot](.app_screenshot.png)

### Movies

Sending a GET request to /movies on the URL returns all the saved movies informations.

Sending a GET request to /movies/:id where :id is the id of the movie returns can retrieve that movie informations.

Sending a POST request to /movies on the URL, with the aproprieted params, saves a new movie on the database.

Sending a PATCH to /movies/:id where :id is the id of the movie, with the aproprieted params, updates the movie on the database.

Sending a DELETE request to /movies/:id where :id is the id of the movie deletes that movie from the database.

Movie params are:

- title: string
- genre: string
- runtime: integer(in minutes)
- year: date(as "dd-mm-yyyy")
- poster: string(as a URL for a movie poster)
- director: string
- photo: string(as a URL for the director photo)
- plot: text

### Favourites

Sending a GET request to /favourites on the URL returns all the saved favourites informations.

Sending a GET request to /favourites/:id where :id is the id of the favourite returns can retrieve that favourite informations.

Sending a POST request to /favourites on the URL, with the aproprieted params, saves a new favourite on the database.

Sending a PATCH to /favourites/:id where :id is the id of the favourite, with the aproprieted params, updates the favourite on the database.

Sending a DELETE request to /favourites/:id where :id is the id of the favourite deletes that favourite from the database.

Movie params are:

- user_id: integer(user functionality is not implemented yet, use 1)
- movie_id: integer

## Documentation

- See [API Documentation with Postman.](https://documenter.getpostman.com/view/17032921/TzzHnZHi)

## Built With

- Ruby
- Rails
- Devise, Rubocop, Rspec

## Live Demo

[Movie API](https://movies-api-jpdf00.herokuapp.com)


## Getting Started

### Prerequisites

- Ruby 2.7.2
- Rails 5.2.4.5
- Yarn
- PostgreSQL

### Setup

- At the top of this repo click on the button named "Clone"
- Copy the HTTP URL or SSH.
- In the terminal, type `git clone <copied-value>` replace '<copied-value>' with the HTTP, URL, or SSH that you copied from the last step.
- In the terminal, `cd` to the folder you cloned.

### Install

- Open the file names'database.yml' located in the 'config' folder.
- Under 'default: &default' change the values of username: and password: to the username and password of your local postgres server.
- In the terminal type the following commands in the same order as they are presented:
`rails db:create`
`rails db:schema:load`
`rails db:migrate`
`rails db:seed`

### Usage

- In the terminal type `rails s`
- In the browser type `localhost:3000`

### Run tests

- In the terminal `cd` to the folder you just cloned.
- In the terminal type `rspec`.

## Author

👤 **Paul Clue**

- GitHub: [@PaulClue](https://github.com/Paul-Clue)
- LinkedIn: [Paul Clue](https://www.linkedin.com/in/paul-clue/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!


## Show your support

Give a ⭐️ if you like this project!


## 📝 License

This project is [MIT](./LICENSE) licensed.

* ...
