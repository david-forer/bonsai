class BonsaisController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :initialize_session
    before_action :set_bonsai, only: [:show, :edit, :update, :destroy]
    before_action :load_cart
   

    def index 
        @bonsais = Bonsai.all.order("created_at desc")
    end

    def show 
        # @bonsai = Bonsai.find_by_id(params[:id])
        # redirect_to '/' if !@bonsai
    end

    def new 
        @bonsai = current_user.bonsais.build
    end

    def edit 

    end

    def create

        @bonsai = current_user.bonsais.build(bonsai_params)

        respond_to do |format|
            if @bonsai.save
                format.html { redirect_to @bonsai, notice: 'Your Bonsai was successfully created.' }
                format.json { render :show, status: :created, location: @bonsai }
            else
                format.html { render :new }
                format.json { render json: @bonsai.errors, status: :unprocessable_entity }
            end
        end
        
    end

    def update 
        respond_to do |format|
            if @bonsai.update(bonsai_params)
                format.html { redirect_to @bonsai, notice: 'Your Bonsai was successfully updated.' }
                format.json { render :show, status: :created, location: @bonsai }
            else
                format.html { render :new }
                format.json { render json: @bonsai.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @bonsai.destroy
            respond_to do |format|
            format.html { redirect_to bonsais_url, notice: 'Bonsai was successfully repotted elsewhere.' }
            format.json { head :no_content }
            end
    end

    def totalprice
  self.sales.sum( :price )
end
   

    private

    def initialize_session
        session[:cart] ||= []
    end
    def load_cart 
        @cart = Bonsai.find(session[:cart])
    end

    def set_bonsai
        @bonsai = Bonsai.find(params[:id])
    end

    def bonsai_params
        params.require(:bonsai).permit(:name, :type_of, :description, :price, :rating, :image, :user_id )
    
    end


end
