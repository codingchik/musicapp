class UsersController < ApplicationController

	def index
		@users = User.all
	end	

	def show
		# @user = Show.find(params[:id])
	end

	def new
		@user = User.new
		@is_signup = true
	end

	def create
		@user = User.new(params.require(:user).permit(:name, :email, :location, :password, :password_confirmation))
		if @user.save
			session[:user_id] = @user.id.to_s
			redirect_to likes_path
		else
			redirect_to new_user_path
		end
	end

	def destroy
		User.find(params[:id]).destroy
		redirect_to users_path
	end
end
