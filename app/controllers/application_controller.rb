class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  protect_from_forgery with: :null_session, except: :create

  before_action :set_locale
#  before_action :configure_permitted_parameters, if: :devise_controller?

  def default_url_options
    { locale: I18n.locale }
  end

  private

    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end

  protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
 
  #   devise_parameter_sanitizer.permit(:sign_up) do |user_params|
  #     user_params.permit(:name, :email, :password, :password_confirmation)
  #   end
 
  #   devise_parameter_sanitizer.permit(:account_update) do |user_params|
  #     user_params.permit(:name, :email, :password, :password_confirmation, :current_password)
  #   end

  # end

end
