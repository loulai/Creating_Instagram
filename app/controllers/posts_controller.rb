class PostsController < ApplicationController
	before_action :authenticate_user!

  def index
  	@posts = current_user.posts
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = current_user.posts.create(params[:post].permit(:caption))
  	redirect_to '/'
  end

end
