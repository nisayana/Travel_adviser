class LikeSerializer < ActiveModel::Serializer
  
  attributes :id

  has_one :traveler
  has_one :sightseeing

end
