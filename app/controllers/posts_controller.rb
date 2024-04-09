class PostsController < ApplicationController
 
  def new
    @post = Post.new
  end

  def create
    @comment = Comment.new
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      @comment.post_id = @post.id
      redirect_to root_path(@post)
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, images: [])
  end
end
