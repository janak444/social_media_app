class CreateFollowings < ActiveRecord::Migration[7.1]
  def change
    create_table :followings do |t|
      t.references :user_id

      t.timestamps
    end
  end
end
