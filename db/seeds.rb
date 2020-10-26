#create 20 restaurants

Dish.destroy_all
#Tag.destroy_all
Restaurant.destroy_all
DishTag.destroy_all

#tags = ["spicy", "vegetarian", "dessert", "Italian", "healthy", "cheap", "expensive", "Asian", "American", "fast food"]

#tags.each do |tag|
    #Tag.create(name: tag)
#end 

#DishTag.limit(3).order("RANDOM()")

20.times do
    restaurant = Restaurant.create(name: Faker::Restaurant.name)
        10.times do 
            dish = Dish.create(name: Faker::Food.dish, restaurant_id: restaurant.id) 
            3.times do
                tag_arr = Tag.limit(3).order("RANDOM()")
                tag_arr.each do |tag|
                    DishTag.create(dish_id: dish.id, tag_id: tag.id)
            
                end 
            end 
    end 
end

 # end of do 