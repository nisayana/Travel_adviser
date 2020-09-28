class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :description, :image_url
  has_many :sightseeings
end
