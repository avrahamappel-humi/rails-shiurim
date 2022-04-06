require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "user can log in" do
    user = User.first

    post sessions_url, params: { email: user.email, password: "secret" }

    assert_response :redirect
    assert_equal user.id, session[:user_id], "User id not stored in the session"
  end

  test "user can't log in with invalid credentials" do
    post sessions_url, params: { email: User.first.email, password: "foo" }

    assert_response :redirect
    assert_nil session[:user_id], "User id was stored in the session"
  end

  test "user can log out" do
    # Log in the user
    post sessions_url, params: { email: User.first.email, password: "secret" }

    delete sessions_url

    assert_response :redirect
    assert_nil session[:user_id], "User id is still stored in session"
  end
end
