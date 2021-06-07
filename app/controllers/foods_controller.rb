class FoodsController < ApplicationController
  def index
    @foods = Food.order(id: :asc)
  end

  def new
    @food = Food.new
  end

  def create
    food = current_user.foods.create!(food_params)
    redirect_to food
  end

  def show
    @food = Food.find(params[:id])
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    food = Food.find(params[:id])
    food.update!(food_params)
    redirect_to food
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy!
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :comment)
  end
end
