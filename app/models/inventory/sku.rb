class Inventory::SKU < ApplicationRecord
  has_many :line_item, through: :work_orders
end
