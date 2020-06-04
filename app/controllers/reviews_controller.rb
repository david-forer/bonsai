class ReviewsController < ApplicationController
    before_action :set_review, only: [:show, :edit, :update, :destroy]
    before_action :set_bonsai
    before_action :authenticate_user!

    def new 
        @review = Review.new
       
    end
    def edit 

    end 

    def create 
        @review = Review.new(review_params)
        @review.bonsai_id = @bonsai.id
        @review.user_id = current_user.id

        if @review.save
            redirect_to @bonsai
        else
            render 'new'
        end
    end



    def update 
        if @review.update(review_params)
            redirect_to @bonsai
        else 
            render 'edit'
        end
    end

    def destroy 
        @review.destroy
        redirect_to bonsai_path
    end

private

    def review_params
        params.require(:review).permit(:rating, :comment)
    end
    def set_bonsai
        @bonsai = Bonsai.find(params[:bonsai_id])
    end
    def set_review
      @review = Review.find(params[:id])
    end

end
