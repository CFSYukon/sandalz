class CreateInventoryEaches < ActiveRecord::Migration[5.1]
  def change
    create_table :inventory_eaches do |t|

      t.timestamps
    end
  end
end