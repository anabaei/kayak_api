class ResultsController < ApplicationController

 def index
    @out = Result.last.info
    render json: @out
 end 
end
