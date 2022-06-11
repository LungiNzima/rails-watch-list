class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy

  validates :title, uniqueness: true
  validates :overview, uniqueness: true
end
