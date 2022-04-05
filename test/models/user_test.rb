require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "it shouldn't save a user without a name" do
    user = User.new email: "user@example.com"
    assert_not user.save, "User saved without name"
  end
end
