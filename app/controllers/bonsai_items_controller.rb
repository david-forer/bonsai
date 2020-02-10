class BonsaiItemsController < ApplicationController
    include CurrentCart
    before_action :set_cart, only: [:create]

    def index 
        @bonsai_items = BonsaiItem.all
    end

    def show 

    end

    def new 
        @bonsai_item = BonsaiItem.new
    end

    def edit 

    end

    def create 
        bonsai = Bonsai.find(params[:bonsai_id])
            @bonsai_item = @cart.add_bonsai(bonsai)

            respond_to do |format|
            if @bonsai_item.save
                format.html { redirect_to @bonsai_item.cart, notice: 'Your Bonsai was added to cart.' }
                format.json { render :show, status: :created, location: @bonsai_item }
            else
                format.html { render :new }
                format.json { render json: @bonsai_item.errors, status: :unprocessable_entity }
            end
        end
    end 




end
