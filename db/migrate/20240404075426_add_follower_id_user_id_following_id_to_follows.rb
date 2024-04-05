class AddFollowerIdUserIdFollowingIdToFollows < ActiveRecord::Migration[7.1]
  def change
    add_column :follows, :follower_id, :integer
    add_column :follows, :user_id, :integer
    add_column :follows, :following_id, :integer
  end
end
