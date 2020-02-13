class ReviewsController < ApplicationController
before_action :find_bonsai


    def new 
        @review = Review.new
        @user = User.new
    end

    def create 
        @review = Review.new(review_params)
        @review.bonsai_id = @bonsai.id
        # @review.user_id = current_user.id

        if @review.save
            redirect_to review_bonsai_path(@bonsai)
        else
            redirect_to root_path
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
