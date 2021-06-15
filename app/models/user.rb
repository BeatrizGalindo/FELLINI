class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :movie_selections
  has_many :movies, through: :movie_selections
  has_many :friends
  has_many :other_friends, class_name: "Friend", foreign_key: "friend_id"
  has_many :recommendations
  has_many :recommended, class_name: "Recommendation", foreign_key: :recommendee_id
  has_many :recommended_movies, through: :recommended, source: :movie
  has_one_attached :photo

  def all_friends
    friends + other_friends
  end

  def friends?(user)
    all_friends.pluck(:user_id, :friend_id).flatten.include?(user.id)
  end
end
