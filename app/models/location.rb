class Location < ApplicationRecord
    has_many :sightseeings, dependent: :destroy
end
