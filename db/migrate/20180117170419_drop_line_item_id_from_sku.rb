class DropLineItemIdFromSKU < ActiveRecord::Migration[5.1]
  def change
    remove_column :inventory_skus, :line_items_id
  end
end
