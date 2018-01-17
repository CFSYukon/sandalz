class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.text :description
      t.integer :quantity
      t.decimal :price_adjustment

      t.timestamps
    end
  end
end
