class CreateChefs < ActiveRecord::Migration[5.0]
  def change
    create_table :chefs do |t|
      t.string :customer_name
      t.string :ordered_dish
      t.float :quantity

      t.timestamps
    end
  end
end
