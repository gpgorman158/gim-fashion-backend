class Item < ActiveRecord::Base
    belongs_to :cloth
    belongs_to :user
    
end 