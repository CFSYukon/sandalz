class AddColumnsToEaches < ActiveRecord::Migration[5.1]
  def change
    add_column :inventory_eaches, :serial_number, :string
    add_column :inventory_eaches, :human_serial, :string
    add_column :inventory_eaches, :notes, :text
    add_column :inventory_eaches, :date_recieved, :date
    add_column :inventory_eaches, :location, :integer
  end
end
