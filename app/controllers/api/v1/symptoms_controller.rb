class Api::V1::SymptomsController < ApplicationController

  def index
   @users = Symptom.last.info
   render json: @users
  end

end
