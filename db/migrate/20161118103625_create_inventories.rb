class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :name_of_item
      t.real :Quantity_left

      t.timestamps null: false
    end
  end
end
