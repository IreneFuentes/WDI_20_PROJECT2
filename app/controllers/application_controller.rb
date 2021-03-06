class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?


  def after_sign_in_path_for(resource)
    user_path(current_user)
  end

  def configure_permitted_parameters      
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :age, :email, :password, :password_confirmation, :profile_picture, :description, :favorite_country])

    
  
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :age, :email, :password, :password_confirmation, :profile_picture, :description, :favorite_country])
  end
end
