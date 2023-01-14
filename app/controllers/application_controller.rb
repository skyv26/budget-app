class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :update_allowed_parameters, if: :devise_controller?

  protect_from_forgery with: :null_session
  def after_sign_out_path_for(_resource)
    new_user_session_path
  end

  def after_sign_up_path_for(_resource)
    category_path
  end

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
  end
end
