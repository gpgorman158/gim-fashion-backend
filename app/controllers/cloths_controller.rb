class ClothsController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/cloths" do
        cloths = Cloth.all
        cloths.to_json
    end
    get "/cloths/sweaters" do
        cloths = Cloth.all.where(category: 'Sweaters')
        cloths.to_json
    end
    get "/cloths/sneakers" do
        cloths = Cloth.all.where("category = 'Shoes'")
        cloths.to_json
    end
    get "/cloths/pants" do
        cloths = Cloth.all.where("category = 'Pants'")
        cloths.to_json
    end
  
  end