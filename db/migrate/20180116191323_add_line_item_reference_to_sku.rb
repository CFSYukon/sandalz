class AddLineItemReferenceToSKU < ActiveRecord::Migration[5.1]
  def change
    add_reference :inventory_skus, :line_items, index: true
  end
end
