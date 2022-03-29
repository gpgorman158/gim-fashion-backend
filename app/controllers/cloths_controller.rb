class ClothsController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/cloths" do
        cloths = Cloth.all
        cloths.to_json
    end
  
  end