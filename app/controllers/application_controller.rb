class ApplicationController < ActionController::Base
	include ApplicationHelper
	around_action :catch_not_found
	before_action :configure_devise_parameters, if: :devise_controller?

	def configure_devise_parameters
	  devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :email, :password, :password_confirmation)}
	  devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :description, :email, :city, :zip_code, :password, :password_confirmation, :current_password)}
	end
end
