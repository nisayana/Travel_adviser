class Traveler < ApplicationRecord
    has_many :likes
    has_many :reviews
    has_many :sightseeings, through: :likes, source: :reviews
    has_many :sightseeings, through: :reviews, source: :reviews

    validates :name, uniqueness: true
end
