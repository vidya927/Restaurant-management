class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :dish_name
      t.float :price
      t.string :description

      t.timestamps
    end
  end
end
