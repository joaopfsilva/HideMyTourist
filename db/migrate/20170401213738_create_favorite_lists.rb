class CreateFavoriteLists < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_lists do |t|
      t.references :profile
      t.references :list

      t.timestamps
    end
  end
end
