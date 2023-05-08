require "test_helper"

class ListsControllerTest < ActionDispatch::IntegrationTest
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
    get "/lists.json", headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200
  end

  test "create" do
    assert_difference "List.count", 1 do
      post "/lists.json", params: { list_name: "test list" }, headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end
end
