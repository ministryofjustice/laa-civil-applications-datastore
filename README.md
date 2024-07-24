# laa-civil-applications-datastore

This was developed as part of the LAA Digital Hackathon 2024. 

A proof of concept for a central datastore application which is shared across 
all Civil legal aid application services. This service exposes API endpoints
which allow application data to be received using a unique identifying code. 

## How to set up and run the app 

The instructions assume you have [Homebrew](https://brew.sh) installed in your
machine, as well as use some ruby version manager, usually [rbenv](https://github.com/rbenv/rbenv). 
If not, please install all this first.

Clone the repository from GitHub.

Run the following commands:
* `brew bundle`
* `gem install bundler`
* `bundle install`

To run the app locally:
`rails server` or `rails s` 

To test the API endpoint:
`curl http://127.0.0.1:3000/`

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
