class User < ActiveRecord::Base
    has_many :items
    has_many :cloths, through: :items
    
    def get_shopping_items
        shopping_cart = self.items.map { |item| item.cloth}
        shopping_cart.sort_by {|item| item.price}
    end
end 