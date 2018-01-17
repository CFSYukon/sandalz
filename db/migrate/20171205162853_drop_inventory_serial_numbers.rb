class DropInventorySerialNumbers < ActiveRecord::Migration[5.1]
  def change
    drop_table :inventory_serial_numbers, force: :cascade
  end
end
