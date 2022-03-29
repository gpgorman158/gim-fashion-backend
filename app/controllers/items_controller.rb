class ItemsController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/items" do
        items = Item.all
        items.to_json
    end
  
  end