class Recipe < ActiveRecord::Base
    def self.search(search)
        select ("ingredients, required_qty_in_gm").where("ingredients LIKE ?", "%#{search}%") 
    end
end
