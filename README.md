# README

* Project name: post_test. 

* Author: Julian Alfonso Montes Valdenebro.

* Prerequisites:

  Ruby 2.5.1
  Rails 5.2.3
  postgresql

* Database creation:

  rake db:create

* Database initialization:

  rake db:migrate

* How to run the test suite:

  First we need to set up data base, then in command line write this '$ rspec' to run the test suit.
  Models attributes, validations and relations are tested to ensure we have an valid model.

 How to run the app:

  * After setup the data base you need to write 
    $ rails s in command line to run the application.

Code Style:
  
  * Use rubocop to watch the coding style and do
    not commit an offense code in the app.

Live updates.
  
  * pusher is configured to get live updates on
    creating new posts.

Web server.
  
  * Puma web server




