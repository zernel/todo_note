## Commands
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

## Gem Dependnece
* [Devise](https://github.com/plataformatec/devise)

