class UsersController < ApplicationController
  protect_from_forgery with: :null_session
  def index
   @name = User.new
  end

  def new
  end

  def create

   @user = User.new(params.require("user").permit("first_name"))
   if @user.save
     render json: { id: @user.id }
   else
     render json: { error: @user.errors.full_messages }
   end
  end

  def users_doajax

  end

  def show
  end
end
