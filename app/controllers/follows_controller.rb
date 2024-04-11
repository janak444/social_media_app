class FollowsController < ApplicationController
  def create
    @follow = Follow.new(follow_params)
    @follow.user_id = current_user.id
    return unless @follow.save

    redirect_to user_path(@follow.request_by_id)
  end

  def update
    @follow_for_following = Follow.find(params[:id])
    @follow_for_following.following_id = @follow_for_following.request_to_id
   
    @follow_for_followers = Follow.create(follower_id: @follow_for_following.request_by_id, user_id: params[:user_id])
    @follow_for_following.save
    debugger
    redirect_to user_path(current_user.id)
  end

  def destroy
    @follow = Follow.find(params[:id])
    @follow.destroy
    redirect_to users_path
  end

  private

  def follow_params
    params.require(:follow).permit(:request_to_id, :request_by_id)
  end

end
