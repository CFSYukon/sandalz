class AddSerialNumberReferencesToSKUs < ActiveRecord::Migration[5.1]
  def change
    add_reference :inventory_skus, :inventory_serial_number, foreign_key: true
  end
end
