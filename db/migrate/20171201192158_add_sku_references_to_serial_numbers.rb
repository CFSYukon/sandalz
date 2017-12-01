class AddSKUReferencesToSerialNumbers < ActiveRecord::Migration[5.1]
  def change
    add_reference :inventory_serial_numbers, :inventory_skus, foreign_key: true
  end
end
