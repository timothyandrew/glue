class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    { name: session[:name], email: session[:email] }
  end

  def logged_in?
    session[:name].present? && session[:email].present?
  end

  helper_method :logged_in?, :current_user

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to login_path, :alert => exception.message
  end
end
