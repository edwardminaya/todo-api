# To Do Application - Backend RUBY ON RAILS

This is a Todo API using Ruby on Rails. The goal is to create the backend that has the CRUD actions for users.

# Installation

Clone this repository onto your machine. Ensure that you have Ruby on Rails installed. For more information see [ROR](https://guides.rubyonrails.org/getting_started.html)

Once the repository is on your machine get into the folder on your terminal and run the following commands

```
rails db:create
rails db:migrate
rails db:seed
```

These commands will create the database. A seeds file will have a sample data set of tasks that can be seeded into your database.

To see the data in your browser run the following command in your terminal

```
rails server
```

This will start a server on your machine. Go to your browser (I use google chrome) and go to the this url, http://localhost:3000/todos.json You will be able to see the json data. Ensure to use a JSON viewer extension on your browser.

# Minimum Viable Product

- Allow users to see all of their tasks (complete)
- Allow users to create a task (complete)
- Allow users to see an individual tasks (complete)
- Allow users to update a task (complete)
- Allow users to delete a task (complete)
- Allow users to sign up (complete)
- Allow users to login and logout (complete)

# Future Features

- Allow users to create task lists
- Allow users to prioritize tasks
- Allow users to categorize tasks
- Allow users to set due dates and get notifications

# Usage

This repository will be used with a React frontend but can be cloned for anyone to improve or use with their own frontend.
