require 'bcrypt'
class UsersController < ApplicationController
  include BCrypt
  def index
  end
  def new
  	@user = User.new
  end
  def create
  	@user = User.new(user_params)
  	redirect_to @user
  end
  def show
  	@user = User.find(params[:id])
  end

  private
	def user_params
		params.require(:user).permit(:email,:password)
	end
end
