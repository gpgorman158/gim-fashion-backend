class ClothsController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/cloths" do
        cloths = Cloth.all.order(:price)
        cloths.to_json
    end
    get "/cloths/sweaters" do
        cloths = Cloth.all.where(category: 'Sweaters').order(:price)
        cloths.to_json
    end
    get "/cloths/sneakers" do
        cloths = Cloth.all.where("category = 'Shoes'").order(:price)
        cloths.to_json
    end
    get "/cloths/pants" do
        cloths = Cloth.all.where("category = 'Pants'").order(:price)
        cloths.to_json
    end

    delete '/cloths/:id/:user_id' do
        
        cloth = Cloth.find(params[:id])
        item_to_destroy = cloth.find_item(params[:user_id])
       
        item_to_destroy.destroy
        
        item_to_destroy.to_json
      end
  
  end