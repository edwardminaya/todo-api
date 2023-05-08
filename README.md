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

This will start a server on your machine. There is user authentication being used to view the data. Use the test_reqeusts.http file to login and copy the jwt response to the jwt variable. Then you can go through each action to create, read, update, and delete lists and tasks.

# Minimum Viable Product

- Allow users to see all of their tasks (complete)
- Allow users to create a task (complete)
- Allow users to see an individual tasks (complete)
- Allow users to update a task (complete)
- Allow users to delete a task (complete)
- Allow users to sign up (complete)
- Allow users to login and logout (complete)

# Future Features

- Allow users to create task lists (In progress)
- Allow users to prioritize tasks
- Allow users to categorize tasks
- Allow users to set due dates and get notifications

# Usage

This repository will be used with a React frontend but can be cloned for anyone to improve or use with their own frontend.
