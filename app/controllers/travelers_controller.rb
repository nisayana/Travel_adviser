class TravelersController < ApplicationController

    def show 
        @traveler = Traveler.find(params[:id])
        render json: @traveler
    end

    # def destroy
    #     @traveler = Traveler.find(params[:id])
    #     traveler.destroy(params[:id])
    # end

end
