class CreateFavoritePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_places do |t|
      t.references :profile
      t.references :place

      t.timestamps
    end
  end
end
