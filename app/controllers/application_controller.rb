class ApplicationController < ActionController::Base
	helper_method :current_user

  
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def require_user
    redirect_to '/' unless current_user
  end

  def logged_user
    if current_user 
      redirect_to '/show' 
    end
  end

  protect_from_forgery with: :exception
end
