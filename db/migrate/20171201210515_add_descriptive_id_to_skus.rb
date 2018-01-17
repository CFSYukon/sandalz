class AddDescriptiveIdToSKUs < ActiveRecord::Migration[5.1]
  def change
    add_column :inventory_skus, :descriptive_id, :string, null: false
  end
end
