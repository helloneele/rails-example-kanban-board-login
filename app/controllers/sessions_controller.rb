class SessionsController < ApplicationController
  def create
    user = User.find_or_create_with_omniauth(request.env['omniauth.auth'])

    if user
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in'
    else
      redirect_to login_path, alert: 'Log in failed'
    end
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
