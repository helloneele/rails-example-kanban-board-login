class SessionsController < ApplicationController
  def new
  end

  def create
    reset_session # prevent session fixation
    par = login_params
    user = User.find_by(username: par[:username])
    if user && user.authenticate(par[:password])
      # Save the user id in the session
      # rails will take care of setting + reading cookies
      # when the user navigates around our website.
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in'
    else
      redirect_to login_path, alert: 'Log in failed'
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'Logged out'
  end

  private

  def login_params
    params.permit(:username, :password)
  end
end
