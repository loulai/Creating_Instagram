class HashtagsController < ApplicationController
	def show
		@hashtag = Hashtag.find(params[:id])
		@posts_count = @hashtag.posts.count
	end
end
