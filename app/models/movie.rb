class Movie < ApplicationRecord
  extend Enumerize

  enumerize :platform, in: [:netflix, :amazon, :disney_plus, :apple_tv_plus, :youtube, :rakuten, :now], predicates: true, scope: true

  has_one_attached :poster
end
