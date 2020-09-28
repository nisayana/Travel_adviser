class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
        render json: @reviews
    end

    def show
        @review = Review.find(params[:id])
    end

    # def new
    #     @review = Review.new
    #     render json: @review
    # end

    def create
        @review = Review.create(review_params)
        render json: @review
    end

    def destroy
        @rewview = Review.find(params[:id])
        @review.destroy(params[:id])
        render json: {message: "Review has been deleted", review: @review}
    end

    private

    def review_params
        review_params = reviews.permit(:review, :sightseeing_id, :traveler_id)
    end

end
