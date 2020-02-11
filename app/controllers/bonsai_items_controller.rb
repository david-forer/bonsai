class BonsaiItemsController < ApplicationController
    include CurrentCart
    before_action :set_bonsai_item, only: [:show, :edit, :update, :destroy]
    before_action :set_cart, only: [:create]

    def index 
        @bonsai_items = BonsaiItem.all
    end

    def show 
        # @bonsai = Bonsai.find(params[:bonsai_id])
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

    def update
        respond_to do |format|
        if @bonsai_item.update(bonsai_item_params)
            format.html { redirect_to @bonsai_item, notice: 'Bonsai item was successfully updated.' }
            format.json { render :show, status: :ok, location: @bonsai_item }
        else
            format.html { render :edit }
            format.json { render json: @bonsai_item.errors, status: :unprocessable_entity }
      end
    end
  end

    def destroy
    @cart = Cart.find(session[:cart_id])
    @bonsai_item.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(@cart), notice: 'Item successfully removed.' }
      format.json { head :no_content }
    end
  end


    private

     def set_bonsai_item
      @bonsai_item = BonsaiItem.find(params[:id])
    end

    def bonsai_item_params
      params.require(:bonsai_item).permit(:bonsai_id)
    end


end
