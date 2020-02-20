# README

This is an app that is built with Ruby on Rails. It is designed as an ecommerce type site that you can sell, buy and review Bonsai plants. Users can browse the different bonsais and learn about them and how to take care of them.

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

## Installation

1. Clone this repo.
2. Install dependences:
```
    $ bundle install
```
3. Create a database structure with the following command:
```
    $ rake db:migrate
```
4. Run web server:
```
    $ rails s 
```
5. Navigate to `localhost:3000` in your browser.

## Usage

Sign up then you will be able to add bonsai plants, edit plants and leave reviews.

# Omniauth-Github 
Set up a .env file in the root directory. 
Include:

GITHUB_KEY=YOUR_KEY 

GITHUB_SECRET=YOUR_SECRET_KEY

add .env to your .gitignore file to keep your Key and Secret protected

# License:

This project is available as open source under the terms of the MIT License.