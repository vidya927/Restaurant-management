class Inventory < ApplicationRecord
    def self.search(search)
        where("item_name LIKE ?", "%#{search}%") 
    end
    
    def self.update(value)
        
    end
end

