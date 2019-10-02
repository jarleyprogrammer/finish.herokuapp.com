class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_devise_params, if: :devise_controller?

    def configure_devise_params
        attributes = [:name, :surname, :email, :password, :password_confirmation]
      #  devise_parameter_sanitizer.permit(:sign_up,) do |user|
            #user.permit(:name, :surname, :email, :password, :password_confirmation)
        #end
        devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
        devise_parameter_sanitizer.permit(:account_update, keys: attributes)
        
    end

end
