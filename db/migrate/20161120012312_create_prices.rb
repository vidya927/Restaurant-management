class CreatePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
      t.string :dish_name
      t.float :price
      t.string :description
      t.string :preparation_time

      t.timestamps
    end
  end
end
