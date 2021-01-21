class TravelerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age
  has_many :likes
  has_many :reviews
end
