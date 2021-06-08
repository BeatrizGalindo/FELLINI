class Movie < ApplicationRecord
  has_one_attached :poster
  extend Enumerize
  enumerize :platform, in: [:netflix, :amazon, :disney_plus, :hbo_max, :youtube], predicates: true, scope: true
end
