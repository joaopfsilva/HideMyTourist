class RemoveCityFromPlaces < ActiveRecord::Migration[5.0]
  def change
    remove_reference :places, :city, foreign_key: true
  end
end
