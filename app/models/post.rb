class Post < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many_attached :images
  has_many :comments
  has_many :likes
end
