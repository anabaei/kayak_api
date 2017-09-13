class Api::V1::SymptomsController < ApplicationController
protect_from_forgery with: :null_session

  def index
   @users = Symptom.last.info
   render json: @users
  end

  def create
   Result.create(info: params.require(:_json))
  end

  def new

  end

end
