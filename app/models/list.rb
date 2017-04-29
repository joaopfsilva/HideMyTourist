class List < ApplicationRecord
  belongs_to :profile
  belongs_to :city

  has_many :place_lists

end
