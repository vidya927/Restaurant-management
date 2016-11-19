class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.string :item_name
      t.float :quantity_available

      t.timestamps
    end
  end
end
