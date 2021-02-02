class TravelerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :liked_sights, :reviewed_sights
  # has_many :sightseeings, through: :likes
  has_many :likes
  has_many :reviews
end
