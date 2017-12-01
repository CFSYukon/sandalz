class Inventory::SKU < ApplicationRecord
  has_many :serial_numbers
end
