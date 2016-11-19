class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :ordered_dish
      t.float :Quntatity_of_each_item
      t.integer :no

      t.timestamps null: false
    end
  end
end
