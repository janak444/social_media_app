class AddUserIdPostIdToLikes < ActiveRecord::Migration[7.1]
  def change
    add_column :likes, :user_id, :integer
    add_column :likes, :post_id, :integer
  end
end
