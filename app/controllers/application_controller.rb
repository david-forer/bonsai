class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    # include CurrentCart
    # before_action :set_cart

     def add_to_cart
        id = params[:id].to_i
        session[:cart] << id unless session[:cart].include?(:id)
        redirect_to root_path
    end

    def remove_from_cart 
        id = params[:id].to_i
        session[:cart].delete(id)
        redirect_to root_path
    end
end
