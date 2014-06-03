class CommentsController < ApplicationController
	def index
		@post = Post.find(params[:post_id])
	end

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new(params[:comment].permit(:comment))
		@comment.user = current_user
		@comment.save
		redirect_to '/'
	end

end
