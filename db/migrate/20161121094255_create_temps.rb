class CreateTemps < ActiveRecord::Migration[5.0]
  def change
    create_table :temps do |t|
      t.string :ingredients
      t.float :qty

      t.timestamps
    end
  end
end
