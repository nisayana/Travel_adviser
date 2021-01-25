class SightseeingsController < ApplicationController

    def index
        @sightseeings = Sightseeing.all
        render json: @sightseeings
    end

    def show 
        byebug
        @sightseeing = Sightseeing.find(params[:id])
        render json: @sightseeing
    end

    def new
        @sightseeing = Sightseeing.new
        render json: @sightseeing
    end

    def create
        @sightseeing = Sightseeing.create(sightseeing_params)
        render json: @sightseeing
        # redirect_to @sightseeings
    end

    def update 
        @sightseeing = Sightseeing.find(params[:id])
        @sightseeing.update(sightseeing_params)
        render json: @sightseeing
    end

    def destroy
        @sightseeing = Sightseeing.find(params[:id])
        @sightseeing.destroy()
        # render json: {message: "The sightseeing has been deleted", sightseeing: @sightseeing}
    end


    private

    def sightseeing_params
        params.permit(:name, :description, :image_url, :location_id, :loves, :likes, :reviews)
    end

end
