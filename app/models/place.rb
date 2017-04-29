class Place < ApplicationRecord

  belongs_to :category
  has_many :favorite_place

  has_many :place_lists

end
