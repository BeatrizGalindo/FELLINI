class MovieSelection < ApplicationRecord
  belongs_to :movie
  belongs_to :user
end
