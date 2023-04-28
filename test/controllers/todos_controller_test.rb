require "test_helper"

class TodosControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/todos.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Todo.count, data.length
  end

  test "create" do
    assert_difference "Todo.count", 1 do
      post "/todos.json", params: { title: "test http" }
      assert_response 200
    end
  end

  test "show" do
    get "/todos/#{Todo.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "done", "created_at", "updated_at"], data.keys
  end

  test "update" do
    todo = Todo.first
    patch "/todos/#{todo.id}.json", params: { done: false }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal false, data["done"]
  end
end
