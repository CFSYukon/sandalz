class CreateWorkOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :work_orders do |t|
      t.date :started_on
      t.date :closed_on
      t.text :notes
      t.integer :status

      t.timestamps
    end
  end
end
