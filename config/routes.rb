Rails.application.routes.draw do
  # TODOS
  get "/todos" => "todos#index"
  post "/todos" => "todos#create"
end
