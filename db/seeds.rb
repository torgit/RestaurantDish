# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.create([
    {name: 'Restaurant1'},
    {name: 'Restaurant2'},
    {name: 'Restaurant3'},
    {name: 'Restaurant4'},
    {name: 'Restaurant5'},
])

Dish.create([
    {name: 'Dish1'},
    {name: 'Dish2'},
    {name: 'Dish3'},
    {name: 'Dish4'},
    {name: 'Dish5'},
    {name: 'Dish6'},
    {name: 'Dish7'},
    {name: 'Dish8'},
    {name: 'Dish9'},
    {name: 'Dish10'},
])

RestaurantDish.create([
    {restaurant_id: 1, dish_id: 1},
    {restaurant_id: 1, dish_id: 2},
    {restaurant_id: 2, dish_id: 3},
    {restaurant_id: 2, dish_id: 4},
    {restaurant_id: 3, dish_id: 5},
    {restaurant_id: 3, dish_id: 6},
    {restaurant_id: 4, dish_id: 7},
    {restaurant_id: 4, dish_id: 8},
    {restaurant_id: 5, dish_id: 9},
    {restaurant_id: 5, dish_id: 10},
])