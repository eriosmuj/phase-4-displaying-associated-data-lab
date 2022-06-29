class ItemsController < ApplicationController

    def index 
        # user = User.find_by(id: params[:user_id])
        # if user
        #   render json: user.items
        # else if params[:user_id]
        #   render json: { error: "User not found"}, status: :not_found
        # else
           items = Item.all
           render json: items, include: :user  
    end
end
