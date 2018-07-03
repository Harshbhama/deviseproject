class LikesController < ApplicationController

	def create

					like = Like.create(like: params[:like][:like], post_id: params[:like][:post_id])
		
		return redirect_to post_path(params[:like][:post_id])

	end
end
