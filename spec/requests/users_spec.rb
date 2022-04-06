require 'rails_helper'

RSpec.describe "Users", type: :request do
  it "lets a user sign up for an account" do
    post users_url, params: {
      user: {
        name: "Jack",
        email: "jack@beanstalk.com",
        password: "password",
        password_confirmation: "password"
      }
    }

    users = User.where(name: "Jack", email: "jack@beanstalk.com")
    expect(users.any?).to be true
    expect(session[:user_id]).to eq users[0].id
  end
end
