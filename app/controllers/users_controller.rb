class UsersController < ApplicationController
  def index
    @users = User.all
    @follow = Follow.new
  end

  def show
    @posts = Post.where(user_id: current_user.id)
    @user = User.find(current_user.id)
    @request_bys = Follow.where(user_id: current_user.id)
    @request_tos = Follow.where(request_to_id: current_user.id)
  end

  private

  def follow_params
    params.require(:follow).permit(:request_to_id, :request_by_id)
  end
end
