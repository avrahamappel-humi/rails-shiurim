require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "POST /sessions" do
    it "can log in a user" do
      user = User.first

      post sessions_url, params: { email: user.email, password: "secret" }

      expect(response).to redirect_to "/users/#{user.id}"
      expect(session[:user_id]).to eq user.id
    end

    it "prevents a user from logging in with invalid credentials" do
      post sessions_url, params: { email: User.first.email, password: "foo" }

      expect(response).to redirect_to "/sessions/new"
      expect(session[:user_id]).to be_nil
    end
  end

  describe "DELETE /sessions" do
    it "can log out the currently authenticated user" do
      # Log in the user
      post sessions_url, params: { email: User.first.email, password: "secret" }

      delete sessions_url

      expect(response).to redirect_to "/"
      expect(session[:user_id]).to be_nil
    end
  end
end
