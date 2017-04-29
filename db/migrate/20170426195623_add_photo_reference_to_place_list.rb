class AddPhotoReferenceToPlaceList < ActiveRecord::Migration[5.0]
  def change
    add_reference :place_lists, :photo, foreign_key: true
  end
end
