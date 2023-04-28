Rails.application.routes.draw do
  # TODOS
  get "/todos" => "todos#index"
  post "/todos" => "todos#create"
  get "/todos/:id" => "todos#show"
  patch "todos/:id" => "todos#update"
  delete "todos/:id" => "todos#destroy"

  # USERS
  post "/users" => "users#create"
end
