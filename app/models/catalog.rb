class Catalog < ApplicationRecord
    def self.up
      create_table :catalog do |t|
         t.column :recipe_name, :string, :limit => 32, :null => false
         t.column :price, :integer
         t.column :description, :string, :limit => 60, :null => false
         t.column :preparation_time, :float
         t.column :available_days, :string, :limit => 32
      end
   end

   def self.down
      drop_table :catalog
   end
end
