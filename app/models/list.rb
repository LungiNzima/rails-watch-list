class List < ApplicationRecord
  has_many  :bookmarks, dependent: :destroy
  validates_associated  :bookmarks

  validates :name, uniqueness: true
end
