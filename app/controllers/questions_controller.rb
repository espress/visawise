class QuestionsController < ApplicationController
    def show
        @question = Question.find(params[:id])
        respond_to do |format|
            #format.html # index.html.erb
            format.json { render json: @question }
        end
    end 

     def create
        @visa = Question.new
        respond_with Question.create(
            data: params[:data])
        end
    end
end
