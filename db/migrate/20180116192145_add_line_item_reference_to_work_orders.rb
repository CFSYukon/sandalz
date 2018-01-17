class AddLineItemReferenceToWorkOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :work_orders, :line_items, index: true
  end
end
