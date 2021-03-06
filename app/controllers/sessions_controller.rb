class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by email: params[:email]

    if user&.authenticate params[:password]
      session[:user_id] = user.id
      redirect_to user, notice: "Welcome back #{user.name}!"
    else
      redirect_to new_sessions_url, alert: "That email/password combination was invalid."
    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to :root
  end
end
