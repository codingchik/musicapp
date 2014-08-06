class LikesController < ApplicationController
  def index
  	@likes = Like.all
  end

  def new
  	@like = Like.new
  end

  def create
  	like = Like.new(
  		params.require(:like).permit(:text, :user_id)
  		)
  	if like.save
	  	redirect_to likes_path
  	end
  end

  def destroy
  	Like.find(params[:id]).destroy
  	redirect_to likes_path
  end
end