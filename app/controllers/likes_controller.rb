class LikesController < ApplicationController

	def create
		@post = Post.find params[:post_id]
		@post.likes.create(user: current_user)

		WebsocketRails[:likes].trigger 'new', { id: @post.id,  new_like_count: @post.likes.count}

		redirect_to '/posts'
	end

end
