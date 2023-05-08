Rails.application.routes.draw do
  # LISTS
  get "/lists" => "lists#index"

  # TODOS
  get "/todos" => "todos#index"
  post "/todos" => "todos#create"
  get "/todos/:id" => "todos#show"
  patch "todos/:id" => "todos#update"
  delete "todos/:id" => "todos#destroy"

  # USERS SIGN UP
  post "/users" => "users#create"
  # USER LGOIN
  post "/sessions" => "sessions#create"
end
