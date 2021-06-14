class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :movie_selections
  has_many :movies, through: :movie_selections
  has_many :recommendations
  has_many :recommended, class_name: "Recommendation", foreign_key: :recommendee_id
  has_many :recommended_movies, through: :recommended, source: :movie
end
