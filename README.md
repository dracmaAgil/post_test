# README

**Project name:** post_test. 

**Author:** Julian Alfonso Montes Valdenebro.

**rerequisites:**

  * Ruby 2.5.1
  * Rails 5.2.3
  * postgresql

 **Database creation:**

  * rake db:create

**Database initialization:**

  * rake db:migrate

**How to run the test suite:**

  * First we need to set up data base, then in command line write this '$ rspec' to run the test suit.
  * Models attributes, validations and relations are tested to ensure we have an valid model.

 **How to run the app:**

  After setup the data base you need to write $ rails s in command line to run the application.

**How to use the app**
  
  After run the rails server, the first that the user is going to see is home/index, that have a title page, a message if there is nothing posted yet or a list of posts, a button to add post and if there is at least one post, this post is going to have buttons to edit post, delete post and add comment; and finally, if there is at least one comment in one post, this comment have a delete comment button also.


**Code Style:**
  
  * Use rubocop to watch out the coding style and do not write a bad styling code.

**Live updates.**
  
  * pusher is configured to get live updates on
    creating new posts.

**Web server.**
  
  * Puma web server

**Files modified or added.**
  
  * Modified:
    
    * routes.rb
    * Gemfile
    * database.yml
    * application.scss
    * general_style.sass
    * application.js

  * Added:

    * On directory model:
      
      * post.rb
      * comment.rb

    * On directory controllers:
      
      * posts_controller.rb
      * comments_controller.rb
      * home_controller.rb

    * On directory views:
      
      * On directory comments:
        
        * _comment.html.haml
        * _form.html.haml
        * comment_modal.js.erb
        * create-js.erb

      * On directory home:

        * index.html.haml

      * On directory posts:
        
        * _form.html.haml
        * _post.html.haml
        * create.js.erb
        * post_modal.js.erb

      * On directory layouts:
        
        * _header.html.haml

    * On directory initializers:

      * pusher.rb (to initialize pusher config data)
    
    * On directory specs:

      * rails_helper.rb
      * spec_helper.rb
      
      * On directory support:

        * database_cleaner.rb
        * factory_bot.rb
      
      * On directory factories:

        * comments.rb
        * posts.rb

      * On directory models:

        * comment_spec.rb
        * post_spec.rb

**Additional comments:**
  
  * I decided to use modal forms to add posts and comments because to me it's more comfortable and I like more this way to add something.
  * I also decided to use bootstrap as a css framework. 

