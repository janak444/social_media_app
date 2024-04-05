class HomeController < ApplicationController
  def index
    
    @posts = Post.all
    debugger
  end
end
