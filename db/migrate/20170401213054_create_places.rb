class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.float :price
      t.references :category

      t.timestamps
    end
  end
end
