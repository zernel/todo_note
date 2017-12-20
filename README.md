# TODO Note
This is a tutorial project for the newbies, it's a very simple *TODO List Note* with user authentication.

I'm using this project aim to show my trainee about how to start up a simple Rails 5 project, primary knowledges:
1. Rails 5
2. Manage the code with Git
3. Use gem (devise user authentication)
4. Use Bootstrap for basic js/styles
5. Basic usage of jQuery & Ajax

## Procedure Note
1. Init Project
* rails new todo_note
* git init
* git add .
* git commit -m "Init commit"
* (Generate a repo in Github)
* git remote add origin git@github.com:zernel/todo_note.git
* git push origin master

2. Use Devise for authentication
* (add `gem 'devise'` to Gemfile)
* bundle install
* rails generate devise:install
* (Set default_url_options to config/environments/development.rb)
* (Add home page - public#index)
* (Addd flash to layout)
* rails g devise:views
* rails generate devise User
* rails db:migrate
* git commit -m "Use devise for user authentication"
* git push origin master

3. Use bootstrap for styles
* (Add `gem 'bootstrap-sass', '~> 3.3.7'` to Gemfile)
* bundle install
* rename to 'app/assets/stylesheets/application.scss', add the following code, then, remove all the *= require_self and *= require_tree . statements from the sass file. Instead, use @import to import Sass files.
```
  // "bootstrap-sprockets" must be imported before "bootstrap" and "bootstrap/variables"
  @import "bootstrap-sprockets";
  @import "bootstrap";
```
* (Add `gem 'jquery-rails'` to Gemfile)
* bundle install
* (Add the following code to 'app/assets/javascripts/application.js')
```
//= require jquery
//= require bootstrap-sprockets
```
* (Add application/_topbar.html.erb)
* git commit -m "Add bootstrap for styles"
* git push origin master

4. Add Task model
* rails g model Task user_id:integer content:string is_finished:boolean finished_at:datetime
* (modify the migration file to set the is_finished column default to false)
* rake db:migrate
* (set up the relation between User and Task model)
* (finish index & create actions for Task) - check the commit code!


## Refrence
* [Devise](https://github.com/plataformatec/devise)
* [Bootstrap](https://getbootstrap.com/docs/3.3/)
* [Bootstrap Sass](https://github.com/twbs/bootstrap-sass)
