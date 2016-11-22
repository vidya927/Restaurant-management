class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe
      t.string :ingredients
      t.integer :required_qty_in_gm

      t.timestamps null: false
    end
  end
  
end
  