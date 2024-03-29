class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def login!(user)
    session[:session_token] = user.reset_session_token!
  end
  
  def logout!
    session[:session_token] = nil
    current_user.reset_session_token!
  end
  
  def logged_in?
    !!current_user
  end
end
