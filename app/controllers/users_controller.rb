class UsersController < ApplicationController
  def index
    @users = User.all
    @follow = Follow.new
  end

  def show
    @post = Post.new
    @user = User.find(current_user.id)
    @request_bys = Follow.where(user_id: current_user.id)
    @request_tos = Follow.where(request_to_id: current_user.id)
  end

  def follower
    @follower = Follower.new
  end

  def follow_request
    @follow = Follow.new(follow_params)
    @follow.user_id = current_user.id
    return unless @follow.save

    redirect_to user_path(@follow)
  end

  def following
    @following = Following.new
  end

  private

  def follow_params
    params.require(:follow).permit(:request_to_id, :request_by_id)
  end
end
