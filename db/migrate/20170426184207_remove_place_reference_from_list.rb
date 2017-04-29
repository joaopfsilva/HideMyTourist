class RemovePlaceReferenceFromList < ActiveRecord::Migration[5.0]
  def change
    remove_reference :lists, :place
  end
end
