class CallbacksController < Devise::OmniauthCallbacksController
    def facebook
        @user = User.from_omniauth(request.env["omniauth.auth"])
        # render :text => "<pre>" + env["omniauth.auth"].to_yaml and return
        sign_in_and_redirect @user
    end
end