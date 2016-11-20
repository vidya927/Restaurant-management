class Inventory < ApplicationRecord
<<<<<<< HEAD
    def self.index(index)
        where("item_name LIKE ?", "%#{index}%") 
=======
    def self.search(search)
        where("item_name LIKE ?", "%#{search}%") 
>>>>>>> 8d75b08... manager search added
    end
end
