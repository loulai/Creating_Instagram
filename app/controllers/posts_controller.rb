class PostsController < ApplicationController
	before_action :authenticate_user!

  def index
  	@posts = current_user.posts
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = current_user.posts.new(params[:post].permit(:caption, :picture))
  	@post.save!
  	redirect_to '/'
  end

end
