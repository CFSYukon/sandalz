class RemoveLineItemsIdFromWorkOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :work_orders, :line_items_id
  end
end
