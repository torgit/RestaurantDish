class Restaurant < ApplicationRecord
    has_many :restaurant_dishes
    has_many :dishes, :through => :restaurant_dishes
    accepts_nested_attributes_for  :dishes
end
