class SightseeingSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url
  has_many :reviews
  has_many :likes
end
