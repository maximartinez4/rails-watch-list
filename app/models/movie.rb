class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :restrict_with_error
  has_many :lists, through: :bookmarks

  validate :title, presence: true, uniqueness: true
  validate :overview, presence: true
end
