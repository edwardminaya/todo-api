require "test_helper"

class TodosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(
      name: "Test",
      email: "test@test.com",
      password: "password",
    )
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "index" do
    get "/todos.json", headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200
  end

  test "create" do
    assert_difference "Todo.count", 1 do
      post "/todos.json", params: { title: "test http" }, headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end

  test "show" do
    get "/todos/#{Todo.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "done", "created_at", "updated_at", "user_id"], data.keys
  end

  test "update" do
    todo = Todo.first
    patch "/todos/#{todo.id}.json", params: { done: false }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal false, data["done"]
  end

  test "destroy" do
    assert_difference "Todo.count", -1 do
      delete "/todos/#{Todo.first.id}.json"
      assert_response 200
    end
  end
end
