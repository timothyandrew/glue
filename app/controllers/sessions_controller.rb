class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    info = request.env["omniauth.auth"]["info"]
    session[:email] = info[:email]
    session[:name] = info[:first_name]
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:email] = nil
    session[:name] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end