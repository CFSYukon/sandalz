class CreateInventorySerialNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :inventory_serial_numbers do |t|

      t.timestamps
    end
  end
end
