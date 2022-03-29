class Cloth < ActiveRecord::Base
    has_many :items
    has_many :users, through: :items
    
    def self.prices_low_high
        self.all.sort(:price)
    end
end 