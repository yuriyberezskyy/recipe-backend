class UsersController < ApplicationController
    def index 
    render json: User.all
  end
  def show 
    render json: User.find(params[:id])
  end 
  
  def create
     render json: User.create(user_params)
  end

  def update
     @user = User.find(params[:id]);
     @user.update(user_params)
     render json: @user
  end
  
  # def delete
  #   byebug
  #    @dish = Dish.find(params[:id])
  #    @dish.delete
  # end

  private
  def user_params
      params.permit(:name)
  end
end
