class CreatePlaceLists < ActiveRecord::Migration[5.0]
  def change
    create_table :place_lists do |t|
      t.references :list
      t.references :place

      t.timestamps
    end
  end
end
