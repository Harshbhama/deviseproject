class CommentsController < ApplicationController

	before_action :authenticate_user!
	before_action :set_authorization, only: [:destroy]

	def create
		comment = Comment.create(content: params[:comment][:content], post_id: params[:comment][:post_id], user_id: current_user.id)

		return redirect_to post_path(params[:comment][:post_id]) 

	end


	def destroy
		comment = Comment.find_by(id: params[:id])
		abc = comment.post_id
		comment.destroy

		return redirect_to post_path(abc)


	end
	

	 def set_authorization
	 	comment = Comment.find_by(id: params[:id])
		abc = comment.post_id

	 	if current_user.id != comment.user_id

	 		return redirect_to post_path(abc)

	 	end

	 end

end