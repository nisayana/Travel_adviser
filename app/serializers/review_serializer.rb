class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :review, :traveler_id, :traveler_name

  def traveler_name
    self.object.traveler.name
  end
end
