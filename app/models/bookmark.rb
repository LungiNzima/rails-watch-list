class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movies, uniqueness: { scope: :list}
  validates :comment, length: { minimum: 6 }
end
