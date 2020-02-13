class ReviewsController < ApplicationController
before_action :find_bonsai


    def new 
        @review = Review.new
    end

    def create 
        @review = review.new(review_params)
        @review.bonsai_id = @bonsai.id
        @review.user_id = current_user.id

        if @review.save
            redirect_to bonsai_path(@bonsai)
        else
            render :root_path
        end
    end

private

    def review_params
        params.require(:review).permit(:rating, :comment)
    end
    def find_bonsai
        @bonsai = Bonsai.find(params[:bonsai_id])
    end

end
