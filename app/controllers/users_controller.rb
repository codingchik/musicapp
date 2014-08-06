class UsersController < ApplicationController

	def index
		@users = User.all
	end	

	def show
		@user = Show.find(params[:id])
	end
end
