class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.references :profile
      t.references :place

      t.timestamps
    end
  end
end
