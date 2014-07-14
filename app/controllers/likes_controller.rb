class LikesController < ApplicationController

	def create
		@post = Post.find params[:post_id]
		@post.likes.create(user: current_user)

		WebsocketRails[:likes].trigger 'new', { id: @post.id,  new_like_count: @post.likes.count}

		redirect_to '/posts'
	end

	def destroy
	end


end


@listing.buyer.chatrooms.create(listing_id: @listing.id, buyer_id: @buyer.id)