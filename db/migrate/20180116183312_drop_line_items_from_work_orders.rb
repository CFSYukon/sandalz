class DropLineItemsFromWorkOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :work_orders, :lineitems
  end
end
