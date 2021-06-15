class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :movie_selections
  has_many :movies, through: :movie_selections
  has_many :friends
  has_many :friend_users, through: :friends, source: :friend
  has_many :other_friends, class_name: "Friend", foreign_key: "friend_id"
  has_many :other_friend_users, through: :other_friends, source: :user
  has_many :recommendations
  has_many :movie_recommendations, through: :recommendations, source: :movie
  has_many :recommended, class_name: "Recommendation", foreign_key: :recommendee_id
  has_many :recommended_movies, through: :recommended, source: :movie

  def all_friends
    friends + other_friends
  end

  def all_friend_people
    friend_users + other_friend_users
  end

  def friends?(user)
    all_friends.pluck(:user_id, :friend_id).flatten.include?(user.id)
  end
end
