class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
      serialize_role if params.has_key?(:user)
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :role, :joining_date , :phone])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :role, :joining_date , :phone])
    end

    def serialize_role
      params[:user][:role] = params[:user][:role].to_i if params.has_key?(:user)
    end
end

