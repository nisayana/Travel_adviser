class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :review, :traveler_id, :traveler_name

  def traveler_name
    # byebug
    self.object.traveler.name
  end
end
