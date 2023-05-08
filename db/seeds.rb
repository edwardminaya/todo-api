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

# 4 LISTS SAMPLE DATA
list = List.create(
  list_name: "Chores",
  user_id: 1,
)
list = List.create(
  list_name: "Vacation Trip",
  user_id: 1,
)
list = List.create(
  list_name: "Job Search",
  user_id: 2,
)
list = List.create(
  list_name: "Capstone Project",
  user_id: 2,
)

# 8 TODOS SAMPLE DATA
todo = Todo.create(
  title: "Clean Kitchen",
  done: false,
  user_id: 1,
  details: "Clean appliances and countertops",
  due_date: "",
  list_id: 1,
)
todo = Todo.create(
  title: "Clean Bathroom",
  done: false,
  user_id: 1,
  details: "Wipe down mirrors and sink",
  due_date: "",
  list_id: 1,
)
todo = Todo.create(
  title: "Passport",
  done: false,
  user_id: 1,
  details: "Submit passport application with pictures",
  due_date: "",
  list_id: 2,
)
todo = Todo.create(
  title: "Book Trip to Cabo",
  done: false,
  user_id: 1,
  details: "Find direct flights and airbnb",
  due_date: "",
  list_id: 2,
)
todo = Todo.create(
  title: "Update Resume",
  done: false,
  user_id: 2,
  details: "Add capstone to projects section",
  due_date: "",
  list_id: 3,
)
todo = Todo.create(
  title: "Network with Friend",
  done: false,
  user_id: 2,
  details: "Set up meeting and prep questions",
  due_date: "",
  list_id: 3,
)
todo = Todo.create(
  title: "Create Backend",
  done: false,
  user_id: 2,
  details: "Use Ruby on Rails",
  due_date: "",
  list_id: 4,
)
todo = Todo.create(
  title: "Create Frontend",
  done: false,
  user_id: 2,
  details: "Use React",
  due_date: "",
  list_id: 4,
)
