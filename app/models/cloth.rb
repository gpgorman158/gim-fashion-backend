class Cloth < ActiveRecord::Base
    has_many :items
    has_many :users, through: :items
    
    def self.prices_low_high
        self.all.sort(:price)
    end

    def find_item (userId)
        self.items.find_by user_id: userId, cloth_id: self.id
    end

end 