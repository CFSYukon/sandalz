class AddReferencesToLineItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :line_items, :work_orders, index: true
    add_reference :line_items, :inventory_skus, index: true
  end
end
