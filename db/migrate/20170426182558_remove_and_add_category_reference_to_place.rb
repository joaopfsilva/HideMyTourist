class RemoveAndAddCategoryReferenceToPlace < ActiveRecord::Migration[5.0]
  def change
    remove_reference :places, :category
    add_reference :places, :category, foreign_key: true
  end
end
