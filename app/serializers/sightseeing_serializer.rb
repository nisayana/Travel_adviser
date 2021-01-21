class SightseeingSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :location_id, :likes, :reviews
  has_many :reviews
  has_many :likes
end
