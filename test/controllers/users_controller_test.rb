require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get users index" do
    get users_url
    assert_response :success
  end

  test "should get new user form" do
    get new_user_url
    assert_response :success
  end

  test "renders the new form when user creation fails" do
    assert_no_difference "User.count" do
      post users_url, params: { user: { name: "", email: "", password: "" } }
    end

    assert_response :unprocessable_entity
    assert_select "h1", "Create User"
  end
end
