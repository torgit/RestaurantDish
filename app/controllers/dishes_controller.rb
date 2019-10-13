class DishesController < ApplicationController
    def index
        if params[:restaurant_id]
            @restaurant = Restaurant.find(params[:restaurant_id])
            @dishes = @restaurant.dishes
        else
            @dishes = Dish.all
        end
        render json: @dishes
    end

    def show
        if params[:restaurant_id]
            @restaurant = Restaurant.find(params[:restaurant_id])
            puts '@restaurant is ................'
            puts @restaurant
            @dish = @restaurant.dishes.find { |d| d.id == params[:id].to_i }
        else
            @dish = Dish.find(params[:id])
        end
        render json: @dish
    end
end
