class HomeController < ApplicationController
  def index 
    @posts = Post.all
    @comment = Comment.new
 
  end
end
