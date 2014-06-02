class PostsController < ApplicationController
	before_action :authenticate_user!

  def index
  	@posts = current_user.posts
    @post = 
    @comment = @post.comments.new(params[:comment].permit(:comment))
    @comment.user = current_user
    @comment.save

  end

  def new
  	@post = Post.new

  end

  def create
  	@post = current_user.posts.new(params[:post].permit(:picture, :caption, :hashtag_title))
  	@post.save!
  	redirect_to '/'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    flash[:notice] = 'Your post has been deleted'

    redirect_to '/'
  end

  def update
    redirect_to '/'
  end

end
