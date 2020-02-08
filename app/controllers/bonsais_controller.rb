class BonsaisController < ApplicationController

    def new 
        @bonsai = Bonsai.new
    end

    def index 
        @bonsais = Bonsai.all
    end

    def create
        
    end

    def show 
        @bonsai = Bonsai.find_by_id(params[:id])
        redirect_to '/' if !@bonsai
    end


end
