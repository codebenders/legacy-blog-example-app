# Example LegacyBlog application

This is an example Ruby on Rails application which shows how to use DataMapper
to connect to a database with a legacy schema.

## How to run it

Clone the application and cd into app's directory:

git clone git://github.com/codebenders/legacy-blog-app.git
cd legacy-blog-app
bundle install

Import schema:

  mysql < db/schema.sql

Run the server:

  script/rails s

There are scaffolds generated for User and Post model available at
http://localhost:3000/users and http://localhost:3000/posts
