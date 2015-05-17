class VisasController < ApplicationController
    
    def create
        @visa = Visa.new
        respond_with User.create(
            country: params[:country], 
            type: params[:type], 
            region: params[:region])
        end
    end

    def show
        @visa = Visa.find(params[:id])
        respond_to do |format|
            #format.html # index.html.erb
            format.json { render json: @visa }
        end
    end
end
