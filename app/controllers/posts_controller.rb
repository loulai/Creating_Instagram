class PostsController < ApplicationController
	before_action :authenticate_user!

  def index
  	@posts = current_user.posts
  end

  def new
  	@post = Post.new
  end

end