class Sightseeing < ApplicationRecord
  belongs_to :location
  has_many :likes, dependent: :destroy
  has_many :travelers, through: :likes
  has_many :reviews, dependent: :destroy
  # has_many :travelers, through: :likes, source: :traveler
  # has_many :travelers, through: :reviews, source: :traveler
end
