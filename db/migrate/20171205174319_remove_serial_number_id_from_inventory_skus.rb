class RemoveSerialNumberIdFromInventorySKUs < ActiveRecord::Migration[5.1]
  def change
    remove_column :inventory_skus, :inventory_serial_number_id
  end
end
