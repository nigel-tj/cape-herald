class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.  
  include Pundit
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
  
  protected
  def after_sign_in_path_for(resource)
    if current_user.admin?
      admins_index_path
    else
      visitors_index_path
    end
    
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

end
