class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :followers, class_name: 'Follow', foreign_key: 'follower_id'
  has_many :followings, class_name: 'Follow', foreign_key: 'following_id'
  has_many :posts
  has_many :comments
  has_many :like, dependent: :destroy
end
