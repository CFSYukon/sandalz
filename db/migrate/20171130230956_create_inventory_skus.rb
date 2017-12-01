class CreateInventorySkus < ActiveRecord::Migration[5.1]
  def change
    create_table :inventory_skus do |t|

      t.timestamps
    end
  end
end
