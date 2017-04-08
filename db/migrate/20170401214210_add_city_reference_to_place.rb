class AddCityReferenceToPlace < ActiveRecord::Migration[5.0]
  def change
    add_reference :places, :city, foreign_key: true
  end
end
