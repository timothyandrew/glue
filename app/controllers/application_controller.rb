class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    { name: session[:name], email: session[:email] }
  end
end
