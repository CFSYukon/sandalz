class RenameLineItemColumns < ActiveRecord::Migration[5.1]
  def change
    ## Joseph definitely made a mistake here...
    rename_column :line_items, :work_orders_id, :work_order_id
    rename_column :line_items, :inventory_skus_id, :inventory_sku_id
  end
end
