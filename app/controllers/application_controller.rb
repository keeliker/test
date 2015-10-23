class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # 驗證是否登入
  before_action :authenticate_user!
  # 加入 strong_parameters 與 devise 整合的 hack
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  # Cancan
  rescue_from CanCan::AccessDenied do |exception| 
    redirect_to idea_url, :alert => exception.message
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:name) }
  end


end
