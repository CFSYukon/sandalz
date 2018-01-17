class AddLineItemsToWorkOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :work_orders, :lineitems, :hstore
  end
end
