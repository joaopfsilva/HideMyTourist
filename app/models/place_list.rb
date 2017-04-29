class PlaceList < ApplicationRecord
  belongs_to :place
  belongs_to :list
  belongs_to :photo
end
