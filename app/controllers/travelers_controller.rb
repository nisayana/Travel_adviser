class TravelersController < ApplicationController

    def index
        @travelers = Traveler.all
        render json: @travelers
    end
    
    def show 
        @traveler = Traveler.find(params[:id])
        render json: @traveler
    end

    def login 
        @found_traveler = Traveler.find_by(name: params[:username])
        if @found_traveler
            render json: @found_traveler
        else 
            render json: {error: "No traveler with that name exists"}
        end
    end

    # def destroy
    #     @traveler = Traveler.find(params[:id])
    #     traveler.destroy(params[:id])
    # end

end
