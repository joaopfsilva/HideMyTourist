class AddCityToLists < ActiveRecord::Migration[5.0]
  def change
    add_reference :lists, :city, foreign_key: true
  end
end
