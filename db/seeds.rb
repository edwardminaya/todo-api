# 2 USERS TEST USERS
user = User.create(
  name: "test one",
  email: "test1@test.com",
  password: "password",
  password_confirmation: "password",
)
user = User.create(
  name: "test two",
  email: "test2@test.com",
  password: "password",
  password_confirmation: "password",
)

# 10 TODOS SAMPLE DATA
todo = Todo.create(
  title: "Clean Kitchen",
  done: false,
  user_id: 1,
)
todo = Todo.create(
  title: "Clean Bathroom",
  done: false,
  user_id: 1,
)
todo = Todo.create(
  title: "Grocery Shop",
  done: false,
  user_id: 1,
)
todo = Todo.create(
  title: "Give Dog a Bath",
  done: false,
  user_id: 1,
)
todo = Todo.create(
  title: "Book Trip to Cabo",
  done: false,
  user_id: 1,
)
todo = Todo.create(
  title: "Make Doctor Appointment",
  done: false,
  user_id: 2,
)
todo = Todo.create(
  title: "Buy Flowers",
  done: false,
  user_id: 2,
)
todo = Todo.create(
  title: "Venmo Friend For Concert Tickets",
  done: false,
  user_id: 2,
)
todo = Todo.create(
  title: "Update Resume",
  done: false,
  user_id: 2,
)
todo = Todo.create(
  title: "Buy Socks",
  done: false,
  user_id: 2,
)
