class AddUniqueCombos < ActiveRecord::Migration[5.2]
  def change
    add_index :post_subs, [:sub_id, :post_id], unique: true
  end
end
