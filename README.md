# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.5.0 or above

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

<hr />
## Setup/Contribution Requirements

1. Clone the repo
1. Install ImageMagick
```
brew install ImageMagick
```
1. Run Bundle Install:
```
bundle install
```
1. From the root of the repo run the following commands:
```
rake db:create
```
1. Populate the database
```
rake db:migrate
```
1. run the application
```
rails s
```
1. Copy and paste the localhost file from the command prompt into your browser's url
```
localhost:3000
```
<hr />

* ...
