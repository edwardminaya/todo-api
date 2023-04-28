Rails.application.routes.draw do
  get "/todos" => "todos#index"
end
