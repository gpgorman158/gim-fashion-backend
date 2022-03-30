class UsersController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/users" do
        users = User.all
        users.to_json
    end
    get "/users/:id" do
        logged_in_user = User.find(params[:id])
        items = logged_in_user.get_shopping_items
        items.to_json
    end
    
  
  end