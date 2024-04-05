class Post < ApplicationRecord
    belongs_to :user, foreign_key: 'user_id'
    has_many_attached :images
end