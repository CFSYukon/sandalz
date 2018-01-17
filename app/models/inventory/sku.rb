class Inventory::SKU < ApplicationRecord
  has_many :line_item
end
