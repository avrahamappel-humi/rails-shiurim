require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "user can sign up for an account" do
    post users_url, params: {
      user: {
        name: "Jack",
        email: "jack@beanstalk.com",
        password: "password",
        password_confirmation: "password"
      }
    }

    user_query = User.where(name: "Jack", email: "jack@beanstalk.com")
    assert user_query.any?, "User was not created"
    assert_equal user_query[0].id, session[:user_id], "User was not logged in"
  end
end
