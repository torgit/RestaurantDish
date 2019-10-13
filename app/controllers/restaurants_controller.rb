class RestaurantsController < ApplicationController
    def index
        if params[:dish_id]
            @dish = Dish.find(params[:dish_id])
            @restaurants = @dish.restaurants
        else
            @restaurants = Restaurant.all
        end
        render json: {restaurants: @restaurants}
    end

    def show
        if params[:dish_id]
            @dish = Dish.find(params[:dish_id])
            @restaurant = @dish.restaurants.find { |r| r.id == params[:id].to_i }
        else
            @restaurant = Restaurant.find(params[:id])
        end
        render json: {restaurants: @restaurant}
    end
end
