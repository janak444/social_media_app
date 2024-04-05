class Follow < ApplicationRecord
  has_many :users
  belongs_to :user, foreign_key: 'user_id'
end
