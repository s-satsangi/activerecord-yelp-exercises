#create 20 restaurants

Dish.destroy_all
#Tag.destroy_all
Restaurant.destroy_all
DishTag.destroy_all

tags = ["spicy", "vegetarian", "dessert", "Italian", "healthy", "cheap", "expensive", "Asian", "American", "fast food"]

tags.each do |tag|
    Tag.create(name: tag)
end 

#DishTag.limit(3).order("RANDOM()")

20.times do
    restaurant = Restaurant.create(name: Faker::Restaurant.name)
        10.times do 
            dish = Dish.create(name: Faker::Food.dish, restaurant_id: restaurant.id) 
          
                tag_arr = Tag.order(Arel.sql("RANDOM()")).limit(3)
                tag_arr.each do |tag|
                    DishTag.create(dish_id: dish.id, tag_id: tag.id)
            
                end 
            
        end 
end
#Model.order(Arel.sql('RANDOM()')).first