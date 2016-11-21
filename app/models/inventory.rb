class Inventory < ApplicationRecord
    def self.index(index)
        where("item_name LIKE ?", "%#{index}%") 
    end
end
