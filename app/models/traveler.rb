class Traveler < ApplicationRecord
    has_many :likes
    has_many :reviews
    has_many :liked_sights, through: :likes, :source => :sightseeing
    has_many :reviewed_sights, through: :reviews, :source => :sightseeing

    validates :name, uniqueness: true
end
