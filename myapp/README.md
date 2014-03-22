== Assignement instructions 



1. Make a new Rails app from the ground up. Create a User model and a Post model. 
   Associate the models so that one User can have many Posts. 

2. Create a RESTful routing scheme that allows the display of a user at /users/:id, a list of 
   all the users at /users, and the ability to delete a user by sending a DELETE request to /
   users/:id. 

3. Create a nested resource for posts (see http://guides.rubyonrails.org/
   routing.html#nested-resources) that allows you to see all of a user’s posts at /users/:id/
   posts
