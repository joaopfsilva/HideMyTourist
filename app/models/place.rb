class Place < ApplicationRecord
  belongs_to :city
  belongs_to :category

  has_many :favorite_place

end
