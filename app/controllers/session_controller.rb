class SessionsController < ApplicationController
  def create
    user = User.find_or_create_with_omniauth(request.env['omniauth.auth'])

    # render text: "<pre>" + env["omniauth.auth"].to_yaml and return

    if user
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

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
