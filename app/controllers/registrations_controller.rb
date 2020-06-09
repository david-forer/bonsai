class RegistrationsController < Devise::RegistrationsController


    def user_profile 
        @reviews = current_user.reviews
    end

 
 
 private

    def sign_up_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :user_id)
    end

    def account_update_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, :user_id)
    end

end