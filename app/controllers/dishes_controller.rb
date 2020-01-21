class DishesController < ApplicationController
  def index 
    render json: Dish.all
  end

  def show 
    render json: Dish.find(params[:id])
  end 
     
  def create
    @user = User.find_or_create_by(name: dish_params[:user])
    dish_params["user"] = @user.id
    @dish = Dish.create(name_of_dish: params["name_of_dish"], description: params["description"], country: params["country"], img: params["img"], like: params["like"], user_id: @user.id)
    render json: @dish
  end

  def update
     @dish = Dish.find(params[:id]);
     @dish.update(dish_params)
     render json: @dish
  end

  def destroy
     @dish = Dish.find(params[:id])
     @dish.destroy
  end

  private
    def dish_params
           params.permit(:name_of_dish, :description, :country, :img, :like, :user_id )
    end

end
