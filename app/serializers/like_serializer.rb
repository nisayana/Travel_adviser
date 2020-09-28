class LikeSerializer < ActiveModel::Serializer
  attributes :id, :traveler_name

  def traveler_name
    self.object.traveler.name
  end
end
