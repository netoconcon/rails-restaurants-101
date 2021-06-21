class RestaurantsController < ApplicationController
  before_action :set_restaurant, except: [:index, :new]

  def index
    # vai mandar meu model buscar todos restaurantes no db
    @restaurants = Restaurant.all
  end

  def show
    # buscar info de um rest especifico
  end

  def new
    # restaurante em branco
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
