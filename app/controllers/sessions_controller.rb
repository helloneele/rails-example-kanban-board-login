class SessionsController < ApplicationController
  def create
    render text: "<pre>" + env["omniauth.auth"].to_yaml and return
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
