Rails.application.routes.draw do
  # TODOS
  get "/todos" => "todos#index"
  post "/todos" => "todos#create"
  get "/todos/:id" => "todos#show"
end
