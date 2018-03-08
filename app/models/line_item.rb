class LineItem < ApplicationRecord
  belongs_to :inventory_sku, class_name: "Inventory::SKU"
  belongs_to :work_order
end
