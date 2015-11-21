class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  #skip_before_action :verify_authenticity_token
  helper_method :current_user
  
def current_user
  if session[:user_id]
    @current_user ||= User.find(session[:user_id])
  else
    @current_user = nil
  end 
end

def check_login
  unless logged_in?
    redirect_to welcome_register_path
  end
end

def logged_in?
  if session[:user_id]
    return true
  else
    return false
  end
end


end
