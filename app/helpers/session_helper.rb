module SessionHelper  
  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end
end
