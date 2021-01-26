class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
        render json: @reviews
    end

    def show
        @review = Review.find(params[:id])
    end

    def create
        @review = Review.create(review_params)
        # byebug
        render json: @review
    end

    private

    def review_params
        params.permit(:review, :sightseeing_id, :traveler_id)
    end

end
