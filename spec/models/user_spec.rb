require 'rails_helper'

RSpec.describe User, type: :model do
  it "shouldn't save a user without a name" do
    user = User.new email: "user@example.com"
    expect(user.save).to be false
  end
end
