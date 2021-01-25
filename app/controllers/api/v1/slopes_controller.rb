class Api::V1::SlopesController < ApplicationController
    
    def index
        @slopes = Slope.all
        render json: @slopes
    end

    def show
        @slope = Slope.find(params[:id])
        render json: @slope 
    end

end