class ApplicationController < ActionController::Base
    include Pundit
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
      #  devise_parameter_sanitizer.permit(:sign_in, keys: [:login])
       # devise_parameter_sanitizer.permit(:sign_up, keys: [:role_id])
    end
    
end
