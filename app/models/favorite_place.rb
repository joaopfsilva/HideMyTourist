class FavoritePlace < ApplicationRecord
  belongs_to :place
  belongs_to :profile
end
