class DropEaches < ActiveRecord::Migration[5.1]
  def change
    drop_table :inventory_eaches
  end
end
