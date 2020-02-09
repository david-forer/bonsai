class BonsaisController < ApplicationController
    before_action :set_bonsai, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]

   

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
        
    end


end
