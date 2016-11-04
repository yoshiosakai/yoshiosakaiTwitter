class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    #umpermitted_parametersを解除
        before_filter :configure_permitted_parameters, if: :devise_controller?
        protected
          def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :location, :about])
            devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username, :location, :about])
          end

          #サインインした後に画面遷移する場所を指定
              def after_sign_in_path_for(resource)
                  'http://localhost:3000/tweets/new'
                end

                #サインアウトした後に画面遷移する場所を指定
      def after_sign_out_path_for(resource)
      'http://localhost:3000/'
    end


end
