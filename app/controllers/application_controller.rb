class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user = nil
    if session[:user_id]
      @current_user ||= User.where(id: session[:user_id]).first
    end
  end
  helper_method :current_user
end
