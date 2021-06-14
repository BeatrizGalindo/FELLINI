class Recommendation < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  belongs_to :recommendee, class_name: "User"
end
