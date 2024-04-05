class AddRequestByIdRequestToIdToFollows < ActiveRecord::Migration[7.1]
  def change
    add_column :follows, :request_by_id, :integer
    add_column :follows, :request_to_id, :integer
  end
end
