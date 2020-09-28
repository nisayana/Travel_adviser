class Review < ApplicationRecord
  belongs_to :sightseeing
  belongs_to :traveler

  validates :review, presence: true
end
